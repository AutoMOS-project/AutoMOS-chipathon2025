import json
import os
from pya import Application, Action, Library

def reload_libraries():
    json_path = "/foss/designs/libs/libs.json"
    try:
        with open(json_path, "r") as f:
            libs = json.load(f)
    except Exception as e:
        print(f"Error loading {json_path}: {e}")
        return

    for name, path in libs.items():
        if not name.strip() or not os.path.exists(path):
            continue
        lib = Library()
        lib.layout().read(path)
        lib.description = f"Library {name}"
        lib.register(name)
        print(f"Registered {name} → {path}")

reload_action = Action()
reload_action.title = "Reload Libraries"
reload_action.shortcut = "Ctrl+R"
reload_action.on_triggered = reload_libraries

app = Application.instance()
menu = app.main_window().menu()
menu.insert_item("@toolbar.end", "reload_libraries", reload_action)