# From https://www.klayout.de/forum/discussion/873/working-with-dxfs
# Author: steven.noyce and Matthias

class SVGWriter

  def initialize(file)
    @file = File.open(file, "w")
  end

  def start(w, h)
    @file.puts(<<"END")
<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<!-- Created with Inkscape (http://www.inkscape.org/) -->

<svg
   xmlns:svg="http://www.w3.org/2000/svg"
   xmlns="http://www.w3.org/2000/svg"
   xmlns:xlink="http://www.w3.org/1999/xlink"
   width="#{'%.12g'%w}mm"
   height="#{'%.12g'%h}mm"
   viewBox="0 0 #{'%.12g'%w} #{'%.12g'%h}"
   version="1.1">   
END
  end

  def finish
    @file.puts("</svg>")
    @file.close
  end

  def begin_layer(lp)
    @stroke_color = lp.frame_color
    @fill_color = lp.fill_color
    @file.puts("<g>")
  end

  def end_layer(lp)
    @file.puts("</g>")
  end

  def polygon(p, dbu)

    pts = []
    p.each_point_hull { |pt| pts << ("%.12g %.12g" % [pt.x * dbu, pt.y * dbu]) }
    ctrs = [ "M " + pts.join(" L ") + " z" ]
    p.holes.times do |h|
      pts = []
      p.each_point_hole(h) { |pt| pts << ("%.12g %.12g" % [pt.x * dbu, pt.y * dbu]) }
      ctrs << [ "M " + pts.join(" L ") + " z" ]
    end
    d = ctrs.join(" ")

    @file.puts("  <path style=\"fill:##{'%06x' % (@fill_color & 0xffffff)}\"")
    @file.puts("        d=\"#{d}\"/>")

  end

end

lv = RBA::LayoutView::current 
lv || raise("No view opened")

cv = RBA::CellView::active 
cv || raise("No layout loaded")
ly = cv.layout 
cell = cv.cell

out = RBA::FileDialog::ask_save_file_name("Chose SVG file to write", ".", "SVG files (*.svg);;All files (*)")
if out

  layers = []

  li = lv.begin_layers
  while !li.at_end?
    if li.current.visible? && !li.current.has_children? && li.current.layer_index >= 0
      layers << li.current
    end
    li.next
  end

  bbox = cell.bbox
  dbu = ly.dbu/1000

  writer = SVGWriter::new(out)
  writer.start(bbox.width * dbu, bbox.height * dbu)

  canvas_tr = RBA::CplxTrans::new(1.0, 0.0, true, RBA::DPoint::new(-bbox.left, bbox.top))

  layers.each do |lp|
    writer.begin_layer(lp)
    si = cell.begin_shapes_rec(lp.layer_index)
    while !si.at_end?
      s = si.shape   
      if s.is_path? || s.is_box? || s.is_polygon?
        writer.polygon(s.polygon.transformed(canvas_tr * si.trans), dbu)
      end
      si.next
    end
    writer.end_layer(lp)
  end

  writer.finish

end
