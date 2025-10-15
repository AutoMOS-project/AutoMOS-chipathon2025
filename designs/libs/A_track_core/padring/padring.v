`timescale 1ps/1ps
module chipathon2025_1_padring (
  TEST_OUT_ASIG5V,
  TEST_SEL_2_Y,
  TEST_SEL_2_A,
  TEST_SEL_2_PDRV1,
  TEST_SEL_2_CS,
  TEST_SEL_2_IE,
  TEST_SEL_2_OE,
  TEST_SEL_2_PAD,
  TEST_SEL_2_PD,
  TEST_SEL_2_PDRV0,
  TEST_SEL_2_PU,
  TEST_SEL_2_SL,
  TEST_SEL_1_Y,
  TEST_SEL_1_A,
  TEST_SEL_1_PDRV1,
  TEST_SEL_1_CS,
  TEST_SEL_1_IE,
  TEST_SEL_1_OE,
  TEST_SEL_1_PAD,
  TEST_SEL_1_PD,
  TEST_SEL_1_PDRV0,
  TEST_SEL_1_PU,
  TEST_SEL_1_SL,
  TEST_SEL_0_Y,
  TEST_SEL_0_A,
  TEST_SEL_0_PDRV1,
  TEST_SEL_0_CS,
  TEST_SEL_0_IE,
  TEST_SEL_0_OE,
  TEST_SEL_0_PAD,
  TEST_SEL_0_PD,
  TEST_SEL_0_PDRV0,
  TEST_SEL_0_PU,
  TEST_SEL_0_SL,
  TEST_EN_Y,
  TEST_EN_A,
  TEST_EN_PDRV1,
  TEST_EN_CS,
  TEST_EN_IE,
  TEST_EN_OE,
  TEST_EN_PAD,
  TEST_EN_PD,
  TEST_EN_PDRV0,
  TEST_EN_PU,
  TEST_EN_SL,
  TEST_IBIAS_ASIG5V,
  TEST_IBIAS_OVRD_Y,
  TEST_IBIAS_OVRD_A,
  TEST_IBIAS_OVRD_PDRV1,
  TEST_IBIAS_OVRD_CS,
  TEST_IBIAS_OVRD_IE,
  TEST_IBIAS_OVRD_OE,
  TEST_IBIAS_OVRD_PAD,
  TEST_IBIAS_OVRD_PD,
  TEST_IBIAS_OVRD_PDRV0,
  TEST_IBIAS_OVRD_PU,
  TEST_IBIAS_OVRD_SL,
  VCO_OUT_Y,
  VCO_OUT_A,
  VCO_OUT_PDRV1,
  VCO_OUT_CS,
  VCO_OUT_IE,
  VCO_OUT_OE,
  VCO_OUT_PAD,
  VCO_OUT_PD,
  VCO_OUT_PDRV0,
  VCO_OUT_PU,
  VCO_OUT_SL,
  VCO_EN_Y,
  VCO_EN_A,
  VCO_EN_PDRV1,
  VCO_EN_CS,
  VCO_EN_IE,
  VCO_EN_OE,
  VCO_EN_PAD,
  VCO_EN_PD,
  VCO_EN_PDRV0,
  VCO_EN_PU,
  VCO_EN_SL,
  VCO_IN_ASIG5V,
  VCO_IBIAS_ASIG5V,
  VCO_IBIAS_OVRD_Y,
  VCO_IBIAS_OVRD_A,
  VCO_IBIAS_OVRD_PDRV1,
  VCO_IBIAS_OVRD_CS,
  VCO_IBIAS_OVRD_IE,
  VCO_IBIAS_OVRD_OE,
  VCO_IBIAS_OVRD_PAD,
  VCO_IBIAS_OVRD_PD,
  VCO_IBIAS_OVRD_PDRV0,
  VCO_IBIAS_OVRD_PU,
  VCO_IBIAS_OVRD_SL,
  LDO_IBIAS_ASIG5V,
  LDO_IBIAS_OVRD_Y,
  LDO_IBIAS_OVRD_A,
  LDO_IBIAS_OVRD_PDRV1,
  LDO_IBIAS_OVRD_CS,
  LDO_IBIAS_OVRD_IE,
  LDO_IBIAS_OVRD_OE,
  LDO_IBIAS_OVRD_PAD,
  LDO_IBIAS_OVRD_PD,
  LDO_IBIAS_OVRD_PDRV0,
  LDO_IBIAS_OVRD_PU,
  LDO_IBIAS_OVRD_SL,
  LDO_VREF_ASIG5V,
  LDO_VREF_OVRD_Y,
  LDO_VREF_OVRD_A,
  LDO_VREF_OVRD_PDRV1,
  LDO_VREF_OVRD_CS,
  LDO_VREF_OVRD_IE,
  LDO_VREF_OVRD_OE,
  LDO_VREF_OVRD_PAD,
  LDO_VREF_OVRD_PD,
  LDO_VREF_OVRD_PDRV0,
  LDO_VREF_OVRD_PU,
  LDO_VREF_OVRD_SL,
  LDO_EN_Y,
  LDO_EN_A,
  LDO_EN_PDRV1,
  LDO_EN_CS,
  LDO_EN_IE,
  LDO_EN_OE,
  LDO_EN_PAD,
  LDO_EN_PD,
  LDO_EN_PDRV0,
  LDO_EN_PU,
  LDO_EN_SL,
  BIAS_EN_Y,
  BIAS_EN_A,
  BIAS_EN_PDRV1,
  BIAS_EN_CS,
  BIAS_EN_IE,
  BIAS_EN_OE,
  BIAS_EN_PAD,
  BIAS_EN_PD,
  BIAS_EN_PDRV0,
  BIAS_EN_PU,
  BIAS_EN_SL,
  RST_N_A2_Y,
  RST_N_A2_A,
  RST_N_A2_PDRV1,
  RST_N_A2_CS,
  RST_N_A2_IE,
  RST_N_A2_OE,
  RST_N_A2_PAD,
  RST_N_A2_PD,
  RST_N_A2_PDRV0,
  RST_N_A2_PU,
  RST_N_A2_SL,
  ana57_ASIG5V,
  VREF12_ASIG5V,
  VCOMP_ASIG5V,
  IOUTN_2UA_ASIG5V,
  IOUTP_2UA_ASIG5V,
  IOUTN_20UA_ASIG5V,
  IOUTP_20UA_ASIG5V,
  IOUTN_50UA_ASIG5V,
  IOUTP_50UA_ASIG5V,
  VREFN_AXX_ASIG5V,
  VREFP_AXX_ASIG5V,
  ana47_ASIG5V,
  VIN_V_LO_A5_ASIG5V,
  VIN_V_RF_A5_ASIG5V,
  VIN_V_RFb_A5_ASIG5V,
  VIN_V_LOb_A5_ASIG5V,
  I_BIAS_A5_ASIG5V,
  CLK_IN_A2_Y,
  CLK_IN_A2_A,
  CLK_IN_A2_PDRV1,
  CLK_IN_A2_CS,
  CLK_IN_A2_IE,
  CLK_IN_A2_OE,
  CLK_IN_A2_PAD,
  CLK_IN_A2_PD,
  CLK_IN_A2_PDRV0,
  CLK_IN_A2_PU,
  CLK_IN_A2_SL,
  OUT4N_A2_ASIG5V,
  OUT4P_A2_ASIG5V,
  OUT3N_A2_ASIG5V,
  OUT3P_A2_ASIG5V,
  OUT2N_A2_ASIG5V,
  OUT2P_A2_ASIG5V,
  OUT1N_A2_ASIG5V,
  OUT1P_A2_ASIG5V,
  IN4N_A2_ASIG5V,
  IN4P_A2_ASIG5V,
  IN3N_A2_ASIG5V,
  IN3P_A2_ASIG5V,
  IN2N_A2_ASIG5V,
  IN2P_A2_ASIG5V,
  IN1N_A2_ASIG5V,
  IN1P_A2_ASIG5V,
  VBIAS_A2_ASIG5V,
  VCM_A2_ASIG5V,
  VOUT_V_IF_A5_ASIG5V,
  VCM_OUT_A3_ASIG5V,
  BCM_OUT_A3_ASIG5V,
  CCM_OUT_A3_ASIG5V,
  V_BIAS_IN_A3_ASIG5V,
  EN_A3_Y,
  EN_A3_A,
  EN_A3_PDRV1,
  EN_A3_CS,
  EN_A3_IE,
  EN_A3_OE,
  EN_A3_PAD,
  EN_A3_PD,
  EN_A3_PDRV0,
  EN_A3_PU,
  EN_A3_SL,
  V_AUX_A3_ASIG5V,
  V_IN_A3_ASIG5V,
  EN_Y,
  EN_A,
  EN_PDRV1,
  EN_CS,
  EN_IE,
  EN_OE,
  EN_PAD,
  EN_PD,
  EN_PDRV0,
  EN_PU,
  EN_SL,
  VREF_ASIG5V,
  VCTRL_ASIG5V,
  IBIAS_ASIG5V,
  VOUT0_ASIG5V,
  VOUT90_ASIG5V,
  VOUT180_ASIG5V,
  VOUT270_ASIG5V);

// Direction phase 
  inout TEST_OUT_ASIG5V;
  output TEST_SEL_2_Y;
  input TEST_SEL_2_A;
  input TEST_SEL_2_PDRV1;
  input TEST_SEL_2_CS;
  input TEST_SEL_2_IE;
  input TEST_SEL_2_OE;
  inout TEST_SEL_2_PAD;
  input TEST_SEL_2_PD;
  input TEST_SEL_2_PDRV0;
  input TEST_SEL_2_PU;
  input TEST_SEL_2_SL;
  output TEST_SEL_1_Y;
  input TEST_SEL_1_A;
  input TEST_SEL_1_PDRV1;
  input TEST_SEL_1_CS;
  input TEST_SEL_1_IE;
  input TEST_SEL_1_OE;
  inout TEST_SEL_1_PAD;
  input TEST_SEL_1_PD;
  input TEST_SEL_1_PDRV0;
  input TEST_SEL_1_PU;
  input TEST_SEL_1_SL;
  output TEST_SEL_0_Y;
  input TEST_SEL_0_A;
  input TEST_SEL_0_PDRV1;
  input TEST_SEL_0_CS;
  input TEST_SEL_0_IE;
  input TEST_SEL_0_OE;
  inout TEST_SEL_0_PAD;
  input TEST_SEL_0_PD;
  input TEST_SEL_0_PDRV0;
  input TEST_SEL_0_PU;
  input TEST_SEL_0_SL;
  output TEST_EN_Y;
  input TEST_EN_A;
  input TEST_EN_PDRV1;
  input TEST_EN_CS;
  input TEST_EN_IE;
  input TEST_EN_OE;
  inout TEST_EN_PAD;
  input TEST_EN_PD;
  input TEST_EN_PDRV0;
  input TEST_EN_PU;
  input TEST_EN_SL;
  inout TEST_IBIAS_ASIG5V;
  output TEST_IBIAS_OVRD_Y;
  input TEST_IBIAS_OVRD_A;
  input TEST_IBIAS_OVRD_PDRV1;
  input TEST_IBIAS_OVRD_CS;
  input TEST_IBIAS_OVRD_IE;
  input TEST_IBIAS_OVRD_OE;
  inout TEST_IBIAS_OVRD_PAD;
  input TEST_IBIAS_OVRD_PD;
  input TEST_IBIAS_OVRD_PDRV0;
  input TEST_IBIAS_OVRD_PU;
  input TEST_IBIAS_OVRD_SL;
  output VCO_OUT_Y;
  input VCO_OUT_A;
  input VCO_OUT_PDRV1;
  input VCO_OUT_CS;
  input VCO_OUT_IE;
  input VCO_OUT_OE;
  inout VCO_OUT_PAD;
  input VCO_OUT_PD;
  input VCO_OUT_PDRV0;
  input VCO_OUT_PU;
  input VCO_OUT_SL;
  output VCO_EN_Y;
  input VCO_EN_A;
  input VCO_EN_PDRV1;
  input VCO_EN_CS;
  input VCO_EN_IE;
  input VCO_EN_OE;
  inout VCO_EN_PAD;
  input VCO_EN_PD;
  input VCO_EN_PDRV0;
  input VCO_EN_PU;
  input VCO_EN_SL;
  inout VCO_IN_ASIG5V;
  inout VCO_IBIAS_ASIG5V;
  output VCO_IBIAS_OVRD_Y;
  input VCO_IBIAS_OVRD_A;
  input VCO_IBIAS_OVRD_PDRV1;
  input VCO_IBIAS_OVRD_CS;
  input VCO_IBIAS_OVRD_IE;
  input VCO_IBIAS_OVRD_OE;
  inout VCO_IBIAS_OVRD_PAD;
  input VCO_IBIAS_OVRD_PD;
  input VCO_IBIAS_OVRD_PDRV0;
  input VCO_IBIAS_OVRD_PU;
  input VCO_IBIAS_OVRD_SL;
  inout LDO_IBIAS_ASIG5V;
  output LDO_IBIAS_OVRD_Y;
  input LDO_IBIAS_OVRD_A;
  input LDO_IBIAS_OVRD_PDRV1;
  input LDO_IBIAS_OVRD_CS;
  input LDO_IBIAS_OVRD_IE;
  input LDO_IBIAS_OVRD_OE;
  inout LDO_IBIAS_OVRD_PAD;
  input LDO_IBIAS_OVRD_PD;
  input LDO_IBIAS_OVRD_PDRV0;
  input LDO_IBIAS_OVRD_PU;
  input LDO_IBIAS_OVRD_SL;
  inout LDO_VREF_ASIG5V;
  output LDO_VREF_OVRD_Y;
  input LDO_VREF_OVRD_A;
  input LDO_VREF_OVRD_PDRV1;
  input LDO_VREF_OVRD_CS;
  input LDO_VREF_OVRD_IE;
  input LDO_VREF_OVRD_OE;
  inout LDO_VREF_OVRD_PAD;
  input LDO_VREF_OVRD_PD;
  input LDO_VREF_OVRD_PDRV0;
  input LDO_VREF_OVRD_PU;
  input LDO_VREF_OVRD_SL;
  output LDO_EN_Y;
  input LDO_EN_A;
  input LDO_EN_PDRV1;
  input LDO_EN_CS;
  input LDO_EN_IE;
  input LDO_EN_OE;
  inout LDO_EN_PAD;
  input LDO_EN_PD;
  input LDO_EN_PDRV0;
  input LDO_EN_PU;
  input LDO_EN_SL;
  output BIAS_EN_Y;
  input BIAS_EN_A;
  input BIAS_EN_PDRV1;
  input BIAS_EN_CS;
  input BIAS_EN_IE;
  input BIAS_EN_OE;
  inout BIAS_EN_PAD;
  input BIAS_EN_PD;
  input BIAS_EN_PDRV0;
  input BIAS_EN_PU;
  input BIAS_EN_SL;
  output RST_N_A2_Y;
  input RST_N_A2_A;
  input RST_N_A2_PDRV1;
  input RST_N_A2_CS;
  input RST_N_A2_IE;
  input RST_N_A2_OE;
  inout RST_N_A2_PAD;
  input RST_N_A2_PD;
  input RST_N_A2_PDRV0;
  input RST_N_A2_PU;
  input RST_N_A2_SL;
  inout ana57_ASIG5V;
  inout VREF12_ASIG5V;
  inout VCOMP_ASIG5V;
  inout IOUTN_2UA_ASIG5V;
  inout IOUTP_2UA_ASIG5V;
  inout IOUTN_20UA_ASIG5V;
  inout IOUTP_20UA_ASIG5V;
  inout IOUTN_50UA_ASIG5V;
  inout IOUTP_50UA_ASIG5V;
  inout VREFN_AXX_ASIG5V;
  inout VREFP_AXX_ASIG5V;
  inout ana47_ASIG5V;
  inout VIN_V_LO_A5_ASIG5V;
  inout VIN_V_RF_A5_ASIG5V;
  inout VIN_V_RFb_A5_ASIG5V;
  inout VIN_V_LOb_A5_ASIG5V;
  inout I_BIAS_A5_ASIG5V;
  output CLK_IN_A2_Y;
  input CLK_IN_A2_A;
  input CLK_IN_A2_PDRV1;
  input CLK_IN_A2_CS;
  input CLK_IN_A2_IE;
  input CLK_IN_A2_OE;
  inout CLK_IN_A2_PAD;
  input CLK_IN_A2_PD;
  input CLK_IN_A2_PDRV0;
  input CLK_IN_A2_PU;
  input CLK_IN_A2_SL;
  inout OUT4N_A2_ASIG5V;
  inout OUT4P_A2_ASIG5V;
  inout OUT3N_A2_ASIG5V;
  inout OUT3P_A2_ASIG5V;
  inout OUT2N_A2_ASIG5V;
  inout OUT2P_A2_ASIG5V;
  inout OUT1N_A2_ASIG5V;
  inout OUT1P_A2_ASIG5V;
  inout IN4N_A2_ASIG5V;
  inout IN4P_A2_ASIG5V;
  inout IN3N_A2_ASIG5V;
  inout IN3P_A2_ASIG5V;
  inout IN2N_A2_ASIG5V;
  inout IN2P_A2_ASIG5V;
  inout IN1N_A2_ASIG5V;
  inout IN1P_A2_ASIG5V;
  inout VBIAS_A2_ASIG5V;
  inout VCM_A2_ASIG5V;
  inout VOUT_V_IF_A5_ASIG5V;
  inout VCM_OUT_A3_ASIG5V;
  inout BCM_OUT_A3_ASIG5V;
  inout CCM_OUT_A3_ASIG5V;
  inout V_BIAS_IN_A3_ASIG5V;
  output EN_A3_Y;
  input EN_A3_A;
  input EN_A3_PDRV1;
  input EN_A3_CS;
  input EN_A3_IE;
  input EN_A3_OE;
  inout EN_A3_PAD;
  input EN_A3_PD;
  input EN_A3_PDRV0;
  input EN_A3_PU;
  input EN_A3_SL;
  inout V_AUX_A3_ASIG5V;
  inout V_IN_A3_ASIG5V;
  output EN_Y;
  input EN_A;
  input EN_PDRV1;
  input EN_CS;
  input EN_IE;
  input EN_OE;
  inout EN_PAD;
  input EN_PD;
  input EN_PDRV0;
  input EN_PU;
  input EN_SL;
  inout VREF_ASIG5V;
  inout VCTRL_ASIG5V;
  inout IBIAS_ASIG5V;
  inout VOUT0_ASIG5V;
  inout VOUT90_ASIG5V;
  inout VOUT180_ASIG5V;
  inout VOUT270_ASIG5V;

// Variable phase 
  wire TEST_OUT_ASIG5V;
  wire TEST_SEL_2_Y;
  wire TEST_SEL_2_A;
  wire TEST_SEL_2_PDRV1;
  wire TEST_SEL_2_CS;
  wire TEST_SEL_2_IE;
  wire TEST_SEL_2_OE;
  wire TEST_SEL_2_PAD;
  wire TEST_SEL_2_PD;
  wire TEST_SEL_2_PDRV0;
  wire TEST_SEL_2_PU;
  wire TEST_SEL_2_SL;
  wire TEST_SEL_1_Y;
  wire TEST_SEL_1_A;
  wire TEST_SEL_1_PDRV1;
  wire TEST_SEL_1_CS;
  wire TEST_SEL_1_IE;
  wire TEST_SEL_1_OE;
  wire TEST_SEL_1_PAD;
  wire TEST_SEL_1_PD;
  wire TEST_SEL_1_PDRV0;
  wire TEST_SEL_1_PU;
  wire TEST_SEL_1_SL;
  wire TEST_SEL_0_Y;
  wire TEST_SEL_0_A;
  wire TEST_SEL_0_PDRV1;
  wire TEST_SEL_0_CS;
  wire TEST_SEL_0_IE;
  wire TEST_SEL_0_OE;
  wire TEST_SEL_0_PAD;
  wire TEST_SEL_0_PD;
  wire TEST_SEL_0_PDRV0;
  wire TEST_SEL_0_PU;
  wire TEST_SEL_0_SL;
  wire TEST_EN_Y;
  wire TEST_EN_A;
  wire TEST_EN_PDRV1;
  wire TEST_EN_CS;
  wire TEST_EN_IE;
  wire TEST_EN_OE;
  wire TEST_EN_PAD;
  wire TEST_EN_PD;
  wire TEST_EN_PDRV0;
  wire TEST_EN_PU;
  wire TEST_EN_SL;
  wire TEST_IBIAS_ASIG5V;
  wire TEST_IBIAS_OVRD_Y;
  wire TEST_IBIAS_OVRD_A;
  wire TEST_IBIAS_OVRD_PDRV1;
  wire TEST_IBIAS_OVRD_CS;
  wire TEST_IBIAS_OVRD_IE;
  wire TEST_IBIAS_OVRD_OE;
  wire TEST_IBIAS_OVRD_PAD;
  wire TEST_IBIAS_OVRD_PD;
  wire TEST_IBIAS_OVRD_PDRV0;
  wire TEST_IBIAS_OVRD_PU;
  wire TEST_IBIAS_OVRD_SL;
  wire VCO_OUT_Y;
  wire VCO_OUT_A;
  wire VCO_OUT_PDRV1;
  wire VCO_OUT_CS;
  wire VCO_OUT_IE;
  wire VCO_OUT_OE;
  wire VCO_OUT_PAD;
  wire VCO_OUT_PD;
  wire VCO_OUT_PDRV0;
  wire VCO_OUT_PU;
  wire VCO_OUT_SL;
  wire VCO_EN_Y;
  wire VCO_EN_A;
  wire VCO_EN_PDRV1;
  wire VCO_EN_CS;
  wire VCO_EN_IE;
  wire VCO_EN_OE;
  wire VCO_EN_PAD;
  wire VCO_EN_PD;
  wire VCO_EN_PDRV0;
  wire VCO_EN_PU;
  wire VCO_EN_SL;
  wire VCO_IN_ASIG5V;
  wire VCO_IBIAS_ASIG5V;
  wire VCO_IBIAS_OVRD_Y;
  wire VCO_IBIAS_OVRD_A;
  wire VCO_IBIAS_OVRD_PDRV1;
  wire VCO_IBIAS_OVRD_CS;
  wire VCO_IBIAS_OVRD_IE;
  wire VCO_IBIAS_OVRD_OE;
  wire VCO_IBIAS_OVRD_PAD;
  wire VCO_IBIAS_OVRD_PD;
  wire VCO_IBIAS_OVRD_PDRV0;
  wire VCO_IBIAS_OVRD_PU;
  wire VCO_IBIAS_OVRD_SL;
  wire LDO_IBIAS_ASIG5V;
  wire LDO_IBIAS_OVRD_Y;
  wire LDO_IBIAS_OVRD_A;
  wire LDO_IBIAS_OVRD_PDRV1;
  wire LDO_IBIAS_OVRD_CS;
  wire LDO_IBIAS_OVRD_IE;
  wire LDO_IBIAS_OVRD_OE;
  wire LDO_IBIAS_OVRD_PAD;
  wire LDO_IBIAS_OVRD_PD;
  wire LDO_IBIAS_OVRD_PDRV0;
  wire LDO_IBIAS_OVRD_PU;
  wire LDO_IBIAS_OVRD_SL;
  wire LDO_VREF_ASIG5V;
  wire LDO_VREF_OVRD_Y;
  wire LDO_VREF_OVRD_A;
  wire LDO_VREF_OVRD_PDRV1;
  wire LDO_VREF_OVRD_CS;
  wire LDO_VREF_OVRD_IE;
  wire LDO_VREF_OVRD_OE;
  wire LDO_VREF_OVRD_PAD;
  wire LDO_VREF_OVRD_PD;
  wire LDO_VREF_OVRD_PDRV0;
  wire LDO_VREF_OVRD_PU;
  wire LDO_VREF_OVRD_SL;
  wire LDO_EN_Y;
  wire LDO_EN_A;
  wire LDO_EN_PDRV1;
  wire LDO_EN_CS;
  wire LDO_EN_IE;
  wire LDO_EN_OE;
  wire LDO_EN_PAD;
  wire LDO_EN_PD;
  wire LDO_EN_PDRV0;
  wire LDO_EN_PU;
  wire LDO_EN_SL;
  wire BIAS_EN_Y;
  wire BIAS_EN_A;
  wire BIAS_EN_PDRV1;
  wire BIAS_EN_CS;
  wire BIAS_EN_IE;
  wire BIAS_EN_OE;
  wire BIAS_EN_PAD;
  wire BIAS_EN_PD;
  wire BIAS_EN_PDRV0;
  wire BIAS_EN_PU;
  wire BIAS_EN_SL;
  wire RST_N_A2_Y;
  wire RST_N_A2_A;
  wire RST_N_A2_PDRV1;
  wire RST_N_A2_CS;
  wire RST_N_A2_IE;
  wire RST_N_A2_OE;
  wire RST_N_A2_PAD;
  wire RST_N_A2_PD;
  wire RST_N_A2_PDRV0;
  wire RST_N_A2_PU;
  wire RST_N_A2_SL;
  wire ana57_ASIG5V;
  wire VREF12_ASIG5V;
  wire VCOMP_ASIG5V;
  wire IOUTN_2UA_ASIG5V;
  wire IOUTP_2UA_ASIG5V;
  wire IOUTN_20UA_ASIG5V;
  wire IOUTP_20UA_ASIG5V;
  wire IOUTN_50UA_ASIG5V;
  wire IOUTP_50UA_ASIG5V;
  wire VREFN_AXX_ASIG5V;
  wire VREFP_AXX_ASIG5V;
  wire ana47_ASIG5V;
  wire VIN_V_LO_A5_ASIG5V;
  wire VIN_V_RF_A5_ASIG5V;
  wire VIN_V_RFb_A5_ASIG5V;
  wire VIN_V_LOb_A5_ASIG5V;
  wire I_BIAS_A5_ASIG5V;
  wire CLK_IN_A2_Y;
  wire CLK_IN_A2_A;
  wire CLK_IN_A2_PDRV1;
  wire CLK_IN_A2_CS;
  wire CLK_IN_A2_IE;
  wire CLK_IN_A2_OE;
  wire CLK_IN_A2_PAD;
  wire CLK_IN_A2_PD;
  wire CLK_IN_A2_PDRV0;
  wire CLK_IN_A2_PU;
  wire CLK_IN_A2_SL;
  wire OUT4N_A2_ASIG5V;
  wire OUT4P_A2_ASIG5V;
  wire OUT3N_A2_ASIG5V;
  wire OUT3P_A2_ASIG5V;
  wire OUT2N_A2_ASIG5V;
  wire OUT2P_A2_ASIG5V;
  wire OUT1N_A2_ASIG5V;
  wire OUT1P_A2_ASIG5V;
  wire IN4N_A2_ASIG5V;
  wire IN4P_A2_ASIG5V;
  wire IN3N_A2_ASIG5V;
  wire IN3P_A2_ASIG5V;
  wire IN2N_A2_ASIG5V;
  wire IN2P_A2_ASIG5V;
  wire IN1N_A2_ASIG5V;
  wire IN1P_A2_ASIG5V;
  wire VBIAS_A2_ASIG5V;
  wire VCM_A2_ASIG5V;
  wire VOUT_V_IF_A5_ASIG5V;
  wire VCM_OUT_A3_ASIG5V;
  wire BCM_OUT_A3_ASIG5V;
  wire CCM_OUT_A3_ASIG5V;
  wire V_BIAS_IN_A3_ASIG5V;
  wire EN_A3_Y;
  wire EN_A3_A;
  wire EN_A3_PDRV1;
  wire EN_A3_CS;
  wire EN_A3_IE;
  wire EN_A3_OE;
  wire EN_A3_PAD;
  wire EN_A3_PD;
  wire EN_A3_PDRV0;
  wire EN_A3_PU;
  wire EN_A3_SL;
  wire V_AUX_A3_ASIG5V;
  wire V_IN_A3_ASIG5V;
  wire EN_Y;
  wire EN_A;
  wire EN_PDRV1;
  wire EN_CS;
  wire EN_IE;
  wire EN_OE;
  wire EN_PAD;
  wire EN_PD;
  wire EN_PDRV0;
  wire EN_PU;
  wire EN_SL;
  wire VREF_ASIG5V;
  wire VCTRL_ASIG5V;
  wire IBIAS_ASIG5V;
  wire VOUT0_ASIG5V;
  wire VOUT90_ASIG5V;
  wire VOUT180_ASIG5V;
  wire VOUT270_ASIG5V;

// Instantiation phase 
  gf180mcu_fd_io__cor CORNER_4();
  gf180mcu_fd_io__cor CORNER_3();
  gf180mcu_fd_io__cor CORNER_2();
  gf180mcu_fd_io__cor CORNER_1();
  gf180mcu_fd_io__fill10 FILLER_0();
  gf180mcu_fd_io__brk5 f8();
  gf180mcu_fd_io__fill10 FILLER_1();
  gf180mcu_fd_io__asig_5p0 TEST_OUT(.ASIG5V(TEST_OUT_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_2();
  gf180mcu_fd_io__fill10 FILLER_3();
  gf180mcu_fd_io__fill5 FILLER_4();
  gf180mcu_fd_io__bi_t TEST_SEL_2(.Y(TEST_SEL_2_Y), .A(TEST_SEL_2_A), .PDRV1(TEST_SEL_2_PDRV1), .CS(TEST_SEL_2_CS), .IE(TEST_SEL_2_IE), .OE(TEST_SEL_2_OE), .PAD(TEST_SEL_2_PAD), .PD(TEST_SEL_2_PD), .PDRV0(TEST_SEL_2_PDRV0), .PU(TEST_SEL_2_PU), .SL(TEST_SEL_2_SL));
  gf180mcu_fd_io__fill10 FILLER_5();
  gf180mcu_fd_io__fill10 FILLER_6();
  gf180mcu_fd_io__fill5 FILLER_7();
  gf180mcu_fd_io__bi_t TEST_SEL_1(.Y(TEST_SEL_1_Y), .A(TEST_SEL_1_A), .PDRV1(TEST_SEL_1_PDRV1), .CS(TEST_SEL_1_CS), .IE(TEST_SEL_1_IE), .OE(TEST_SEL_1_OE), .PAD(TEST_SEL_1_PAD), .PD(TEST_SEL_1_PD), .PDRV0(TEST_SEL_1_PDRV0), .PU(TEST_SEL_1_PU), .SL(TEST_SEL_1_SL));
  gf180mcu_fd_io__fill10 FILLER_8();
  gf180mcu_fd_io__fill10 FILLER_9();
  gf180mcu_fd_io__fill5 FILLER_10();
  gf180mcu_fd_io__bi_t TEST_SEL_0(.Y(TEST_SEL_0_Y), .A(TEST_SEL_0_A), .PDRV1(TEST_SEL_0_PDRV1), .CS(TEST_SEL_0_CS), .IE(TEST_SEL_0_IE), .OE(TEST_SEL_0_OE), .PAD(TEST_SEL_0_PAD), .PD(TEST_SEL_0_PD), .PDRV0(TEST_SEL_0_PDRV0), .PU(TEST_SEL_0_PU), .SL(TEST_SEL_0_SL));
  gf180mcu_fd_io__fill10 FILLER_11();
  gf180mcu_fd_io__fill10 FILLER_12();
  gf180mcu_fd_io__fill5 FILLER_13();
  gf180mcu_fd_io__bi_t TEST_EN(.Y(TEST_EN_Y), .A(TEST_EN_A), .PDRV1(TEST_EN_PDRV1), .CS(TEST_EN_CS), .IE(TEST_EN_IE), .OE(TEST_EN_OE), .PAD(TEST_EN_PAD), .PD(TEST_EN_PD), .PDRV0(TEST_EN_PDRV0), .PU(TEST_EN_PU), .SL(TEST_EN_SL));
  gf180mcu_fd_io__fill10 FILLER_14();
  gf180mcu_fd_io__fill10 FILLER_15();
  gf180mcu_fd_io__fill5 FILLER_16();
  gf180mcu_fd_io__asig_5p0 TEST_IBIAS(.ASIG5V(TEST_IBIAS_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_17();
  gf180mcu_fd_io__fill10 FILLER_18();
  gf180mcu_fd_io__fill5 FILLER_19();
  gf180mcu_fd_io__bi_t TEST_IBIAS_OVRD(.Y(TEST_IBIAS_OVRD_Y), .A(TEST_IBIAS_OVRD_A), .PDRV1(TEST_IBIAS_OVRD_PDRV1), .CS(TEST_IBIAS_OVRD_CS), .IE(TEST_IBIAS_OVRD_IE), .OE(TEST_IBIAS_OVRD_OE), .PAD(TEST_IBIAS_OVRD_PAD), .PD(TEST_IBIAS_OVRD_PD), .PDRV0(TEST_IBIAS_OVRD_PDRV0), .PU(TEST_IBIAS_OVRD_PU), .SL(TEST_IBIAS_OVRD_SL));
  gf180mcu_fd_io__fill10 FILLER_20();
  gf180mcu_fd_io__fill10 FILLER_21();
  gf180mcu_fd_io__fill5 FILLER_22();
  gf180mcu_fd_io__dvdd VTEST();
  gf180mcu_fd_io__fill10 FILLER_23();
  gf180mcu_fd_io__brk5 f7();
  gf180mcu_fd_io__fill10 FILLER_24();
  gf180mcu_fd_io__bi_t VCO_OUT(.Y(VCO_OUT_Y), .A(VCO_OUT_A), .PDRV1(VCO_OUT_PDRV1), .CS(VCO_OUT_CS), .IE(VCO_OUT_IE), .OE(VCO_OUT_OE), .PAD(VCO_OUT_PAD), .PD(VCO_OUT_PD), .PDRV0(VCO_OUT_PDRV0), .PU(VCO_OUT_PU), .SL(VCO_OUT_SL));
  gf180mcu_fd_io__fill10 FILLER_25();
  gf180mcu_fd_io__fill10 FILLER_26();
  gf180mcu_fd_io__fill5 FILLER_27();
  gf180mcu_fd_io__bi_t VCO_EN(.Y(VCO_EN_Y), .A(VCO_EN_A), .PDRV1(VCO_EN_PDRV1), .CS(VCO_EN_CS), .IE(VCO_EN_IE), .OE(VCO_EN_OE), .PAD(VCO_EN_PAD), .PD(VCO_EN_PD), .PDRV0(VCO_EN_PDRV0), .PU(VCO_EN_PU), .SL(VCO_EN_SL));
  gf180mcu_fd_io__fill10 FILLER_28();
  gf180mcu_fd_io__fill10 FILLER_29();
  gf180mcu_fd_io__fill5 FILLER_30();
  gf180mcu_fd_io__asig_5p0 VCO_IN(.ASIG5V(VCO_IN_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_31();
  gf180mcu_fd_io__fill10 FILLER_32();
  gf180mcu_fd_io__fill5 FILLER_33();
  gf180mcu_fd_io__dvdd LDO_OUT();
  gf180mcu_fd_io__fill10 FILLER_34();
  gf180mcu_fd_io__brk5 f7();
  gf180mcu_fd_io__fill10 FILLER_35();
  gf180mcu_fd_io__asig_5p0 VCO_IBIAS(.ASIG5V(VCO_IBIAS_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_36();
  gf180mcu_fd_io__fill10 FILLER_37();
  gf180mcu_fd_io__fill5 FILLER_38();
  gf180mcu_fd_io__bi_t VCO_IBIAS_OVRD(.Y(VCO_IBIAS_OVRD_Y), .A(VCO_IBIAS_OVRD_A), .PDRV1(VCO_IBIAS_OVRD_PDRV1), .CS(VCO_IBIAS_OVRD_CS), .IE(VCO_IBIAS_OVRD_IE), .OE(VCO_IBIAS_OVRD_OE), .PAD(VCO_IBIAS_OVRD_PAD), .PD(VCO_IBIAS_OVRD_PD), .PDRV0(VCO_IBIAS_OVRD_PDRV0), .PU(VCO_IBIAS_OVRD_PU), .SL(VCO_IBIAS_OVRD_SL));
  gf180mcu_fd_io__fill10 FILLER_39();
  gf180mcu_fd_io__fill10 FILLER_40();
  gf180mcu_fd_io__fill5 FILLER_41();
  gf180mcu_fd_io__asig_5p0 LDO_IBIAS(.ASIG5V(LDO_IBIAS_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_42();
  gf180mcu_fd_io__fill10 FILLER_43();
  gf180mcu_fd_io__fill5 FILLER_44();
  gf180mcu_fd_io__bi_t LDO_IBIAS_OVRD(.Y(LDO_IBIAS_OVRD_Y), .A(LDO_IBIAS_OVRD_A), .PDRV1(LDO_IBIAS_OVRD_PDRV1), .CS(LDO_IBIAS_OVRD_CS), .IE(LDO_IBIAS_OVRD_IE), .OE(LDO_IBIAS_OVRD_OE), .PAD(LDO_IBIAS_OVRD_PAD), .PD(LDO_IBIAS_OVRD_PD), .PDRV0(LDO_IBIAS_OVRD_PDRV0), .PU(LDO_IBIAS_OVRD_PU), .SL(LDO_IBIAS_OVRD_SL));
  gf180mcu_fd_io__fill10 FILLER_45();
  gf180mcu_fd_io__fill10 FILLER_46();
  gf180mcu_fd_io__fill5 FILLER_47();
  gf180mcu_fd_io__asig_5p0 LDO_VREF(.ASIG5V(LDO_VREF_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_48();
  gf180mcu_fd_io__fill10 FILLER_49();
  gf180mcu_fd_io__fill5 FILLER_50();
  gf180mcu_fd_io__bi_t LDO_VREF_OVRD(.Y(LDO_VREF_OVRD_Y), .A(LDO_VREF_OVRD_A), .PDRV1(LDO_VREF_OVRD_PDRV1), .CS(LDO_VREF_OVRD_CS), .IE(LDO_VREF_OVRD_IE), .OE(LDO_VREF_OVRD_OE), .PAD(LDO_VREF_OVRD_PAD), .PD(LDO_VREF_OVRD_PD), .PDRV0(LDO_VREF_OVRD_PDRV0), .PU(LDO_VREF_OVRD_PU), .SL(LDO_VREF_OVRD_SL));
  gf180mcu_fd_io__fill10 FILLER_51();
  gf180mcu_fd_io__fill10 FILLER_52();
  gf180mcu_fd_io__fill5 FILLER_53();
  gf180mcu_fd_io__bi_t LDO_EN(.Y(LDO_EN_Y), .A(LDO_EN_A), .PDRV1(LDO_EN_PDRV1), .CS(LDO_EN_CS), .IE(LDO_EN_IE), .OE(LDO_EN_OE), .PAD(LDO_EN_PAD), .PD(LDO_EN_PD), .PDRV0(LDO_EN_PDRV0), .PU(LDO_EN_PU), .SL(LDO_EN_SL));
  gf180mcu_fd_io__fill10 FILLER_54();
  gf180mcu_fd_io__fill10 FILLER_55();
  gf180mcu_fd_io__fill5 FILLER_56();
  gf180mcu_fd_io__bi_t BIAS_EN(.Y(BIAS_EN_Y), .A(BIAS_EN_A), .PDRV1(BIAS_EN_PDRV1), .CS(BIAS_EN_CS), .IE(BIAS_EN_IE), .OE(BIAS_EN_OE), .PAD(BIAS_EN_PAD), .PD(BIAS_EN_PD), .PDRV0(BIAS_EN_PDRV0), .PU(BIAS_EN_PU), .SL(BIAS_EN_SL));
  gf180mcu_fd_io__fill10 FILLER_57();
  gf180mcu_fd_io__fill10 FILLER_58();
  gf180mcu_fd_io__fill5 FILLER_59();
  gf180mcu_fd_io__dvss VSS_A1();
  gf180mcu_fd_io__fill10 FILLER_60();
  gf180mcu_fd_io__fill10 FILLER_61();
  gf180mcu_fd_io__fill5 FILLER_62();
  gf180mcu_fd_io__dvdd VDD_A1();
  gf180mcu_fd_io__fill10 FILLER_63();
  gf180mcu_fd_io__brk5 f6();
  gf180mcu_fd_io__fill10 FILLER_64();
  gf180mcu_fd_io__fill10 FILLER_65();
  gf180mcu_fd_io__fill10 FILLER_66();
  gf180mcu_fd_io__fill5 FILLER_67();
  gf180mcu_fd_io__dvss VSS_A2();
  gf180mcu_fd_io__fill10 FILLER_68();
  gf180mcu_fd_io__fill10 FILLER_69();
  gf180mcu_fd_io__fill5 FILLER_70();
  gf180mcu_fd_io__bi_t RST_N_A2(.Y(RST_N_A2_Y), .A(RST_N_A2_A), .PDRV1(RST_N_A2_PDRV1), .CS(RST_N_A2_CS), .IE(RST_N_A2_IE), .OE(RST_N_A2_OE), .PAD(RST_N_A2_PAD), .PD(RST_N_A2_PD), .PDRV0(RST_N_A2_PDRV0), .PU(RST_N_A2_PU), .SL(RST_N_A2_SL));
  gf180mcu_fd_io__fill10 FILLER_71();
  gf180mcu_fd_io__brk5 f2();
  gf180mcu_fd_io__fill10 FILLER_72();
  gf180mcu_fd_io__asig_5p0 ana57(.ASIG5V(ana57_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_73();
  gf180mcu_fd_io__fill10 FILLER_74();
  gf180mcu_fd_io__fill5 FILLER_75();
  gf180mcu_fd_io__dvdd VDD3V3_AXX();
  gf180mcu_fd_io__fill10 FILLER_76();
  gf180mcu_fd_io__fill10 FILLER_77();
  gf180mcu_fd_io__fill5 FILLER_78();
  gf180mcu_fd_io__asig_5p0 VREF12(.ASIG5V(VREF12_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_79();
  gf180mcu_fd_io__fill10 FILLER_80();
  gf180mcu_fd_io__fill5 FILLER_81();
  gf180mcu_fd_io__asig_5p0 VCOMP(.ASIG5V(VCOMP_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_82();
  gf180mcu_fd_io__fill10 FILLER_83();
  gf180mcu_fd_io__fill5 FILLER_84();
  gf180mcu_fd_io__dvss VSS_AXX();
  gf180mcu_fd_io__fill10 FILLER_85();
  gf180mcu_fd_io__fill10 FILLER_86();
  gf180mcu_fd_io__fill5 FILLER_87();
  gf180mcu_fd_io__asig_5p0 IOUTN_2UA(.ASIG5V(IOUTN_2UA_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_88();
  gf180mcu_fd_io__fill10 FILLER_89();
  gf180mcu_fd_io__fill5 FILLER_90();
  gf180mcu_fd_io__asig_5p0 IOUTP_2UA(.ASIG5V(IOUTP_2UA_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_91();
  gf180mcu_fd_io__fill10 FILLER_92();
  gf180mcu_fd_io__fill5 FILLER_93();
  gf180mcu_fd_io__asig_5p0 IOUTN_20UA(.ASIG5V(IOUTN_20UA_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_94();
  gf180mcu_fd_io__fill10 FILLER_95();
  gf180mcu_fd_io__fill5 FILLER_96();
  gf180mcu_fd_io__asig_5p0 IOUTP_20UA(.ASIG5V(IOUTP_20UA_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_97();
  gf180mcu_fd_io__fill10 FILLER_98();
  gf180mcu_fd_io__fill5 FILLER_99();
  gf180mcu_fd_io__asig_5p0 IOUTN_50UA(.ASIG5V(IOUTN_50UA_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_100();
  gf180mcu_fd_io__fill10 FILLER_101();
  gf180mcu_fd_io__fill5 FILLER_102();
  gf180mcu_fd_io__asig_5p0 IOUTP_50UA(.ASIG5V(IOUTP_50UA_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_103();
  gf180mcu_fd_io__fill10 FILLER_104();
  gf180mcu_fd_io__fill5 FILLER_105();
  gf180mcu_fd_io__asig_5p0 VREFN_AXX(.ASIG5V(VREFN_AXX_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_106();
  gf180mcu_fd_io__fill10 FILLER_107();
  gf180mcu_fd_io__fill5 FILLER_108();
  gf180mcu_fd_io__asig_5p0 VREFP_AXX(.ASIG5V(VREFP_AXX_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_109();
  gf180mcu_fd_io__fill10 FILLER_110();
  gf180mcu_fd_io__fill5 FILLER_111();
  gf180mcu_fd_io__asig_5p0 ana47(.ASIG5V(ana47_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_112();
  gf180mcu_fd_io__brk5 f3();
  gf180mcu_fd_io__fill10 FILLER_113();
  gf180mcu_fd_io__asig_5p0 VIN_V_LO_A5(.ASIG5V(VIN_V_LO_A5_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_114();
  gf180mcu_fd_io__fill10 FILLER_115();
  gf180mcu_fd_io__fill5 FILLER_116();
  gf180mcu_fd_io__asig_5p0 VIN_V_RF_A5(.ASIG5V(VIN_V_RF_A5_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_117();
  gf180mcu_fd_io__fill10 FILLER_118();
  gf180mcu_fd_io__fill5 FILLER_119();
  gf180mcu_fd_io__dvss VSS_A5();
  gf180mcu_fd_io__fill10 FILLER_120();
  gf180mcu_fd_io__fill10 FILLER_121();
  gf180mcu_fd_io__fill5 FILLER_122();
  gf180mcu_fd_io__asig_5p0 VIN_V_RFb_A5(.ASIG5V(VIN_V_RFb_A5_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_123();
  gf180mcu_fd_io__fill10 FILLER_124();
  gf180mcu_fd_io__fill5 FILLER_125();
  gf180mcu_fd_io__asig_5p0 VIN_V_LOb_A5(.ASIG5V(VIN_V_LOb_A5_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_126();
  gf180mcu_fd_io__fill10 FILLER_127();
  gf180mcu_fd_io__fill5 FILLER_128();
  gf180mcu_fd_io__asig_5p0 I_BIAS_A5(.ASIG5V(I_BIAS_A5_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_129();
  gf180mcu_fd_io__fill10 FILLER_130();
  gf180mcu_fd_io__fill5 FILLER_131();
  gf180mcu_fd_io__fill10 FILLER_132();
  gf180mcu_fd_io__fill10 FILLER_133();
  gf180mcu_fd_io__fill5 FILLER_134();
  gf180mcu_fd_io__bi_t CLK_IN_A2(.Y(CLK_IN_A2_Y), .A(CLK_IN_A2_A), .PDRV1(CLK_IN_A2_PDRV1), .CS(CLK_IN_A2_CS), .IE(CLK_IN_A2_IE), .OE(CLK_IN_A2_OE), .PAD(CLK_IN_A2_PAD), .PD(CLK_IN_A2_PD), .PDRV0(CLK_IN_A2_PDRV0), .PU(CLK_IN_A2_PU), .SL(CLK_IN_A2_SL));
  gf180mcu_fd_io__fill10 FILLER_135();
  gf180mcu_fd_io__fill10 FILLER_136();
  gf180mcu_fd_io__fill5 FILLER_137();
  gf180mcu_fd_io__dvdd VDD_A2();
  gf180mcu_fd_io__fill10 FILLER_138();
  gf180mcu_fd_io__brk5 f1();
  gf180mcu_fd_io__fill10 FILLER_139();
  gf180mcu_fd_io__asig_5p0 OUT4N_A2(.ASIG5V(OUT4N_A2_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_140();
  gf180mcu_fd_io__fill10 FILLER_141();
  gf180mcu_fd_io__fill5 FILLER_142();
  gf180mcu_fd_io__asig_5p0 OUT4P_A2(.ASIG5V(OUT4P_A2_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_143();
  gf180mcu_fd_io__fill10 FILLER_144();
  gf180mcu_fd_io__fill5 FILLER_145();
  gf180mcu_fd_io__asig_5p0 OUT3N_A2(.ASIG5V(OUT3N_A2_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_146();
  gf180mcu_fd_io__fill10 FILLER_147();
  gf180mcu_fd_io__fill5 FILLER_148();
  gf180mcu_fd_io__asig_5p0 OUT3P_A2(.ASIG5V(OUT3P_A2_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_149();
  gf180mcu_fd_io__fill10 FILLER_150();
  gf180mcu_fd_io__fill5 FILLER_151();
  gf180mcu_fd_io__asig_5p0 OUT2N_A2(.ASIG5V(OUT2N_A2_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_152();
  gf180mcu_fd_io__fill10 FILLER_153();
  gf180mcu_fd_io__fill5 FILLER_154();
  gf180mcu_fd_io__asig_5p0 OUT2P_A2(.ASIG5V(OUT2P_A2_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_155();
  gf180mcu_fd_io__fill10 FILLER_156();
  gf180mcu_fd_io__fill5 FILLER_157();
  gf180mcu_fd_io__asig_5p0 OUT1N_A2(.ASIG5V(OUT1N_A2_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_158();
  gf180mcu_fd_io__fill10 FILLER_159();
  gf180mcu_fd_io__fill5 FILLER_160();
  gf180mcu_fd_io__asig_5p0 OUT1P_A2(.ASIG5V(OUT1P_A2_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_161();
  gf180mcu_fd_io__fill10 FILLER_162();
  gf180mcu_fd_io__fill5 FILLER_163();
  gf180mcu_fd_io__asig_5p0 IN4N_A2(.ASIG5V(IN4N_A2_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_164();
  gf180mcu_fd_io__fill10 FILLER_165();
  gf180mcu_fd_io__fill5 FILLER_166();
  gf180mcu_fd_io__asig_5p0 IN4P_A2(.ASIG5V(IN4P_A2_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_167();
  gf180mcu_fd_io__fill10 FILLER_168();
  gf180mcu_fd_io__fill5 FILLER_169();
  gf180mcu_fd_io__asig_5p0 IN3N_A2(.ASIG5V(IN3N_A2_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_170();
  gf180mcu_fd_io__fill10 FILLER_171();
  gf180mcu_fd_io__fill5 FILLER_172();
  gf180mcu_fd_io__asig_5p0 IN3P_A2(.ASIG5V(IN3P_A2_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_173();
  gf180mcu_fd_io__fill10 FILLER_174();
  gf180mcu_fd_io__fill5 FILLER_175();
  gf180mcu_fd_io__asig_5p0 IN2N_A2(.ASIG5V(IN2N_A2_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_176();
  gf180mcu_fd_io__fill10 FILLER_177();
  gf180mcu_fd_io__fill5 FILLER_178();
  gf180mcu_fd_io__asig_5p0 IN2P_A2(.ASIG5V(IN2P_A2_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_179();
  gf180mcu_fd_io__fill10 FILLER_180();
  gf180mcu_fd_io__fill5 FILLER_181();
  gf180mcu_fd_io__asig_5p0 IN1N_A2(.ASIG5V(IN1N_A2_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_182();
  gf180mcu_fd_io__fill10 FILLER_183();
  gf180mcu_fd_io__fill5 FILLER_184();
  gf180mcu_fd_io__asig_5p0 IN1P_A2(.ASIG5V(IN1P_A2_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_185();
  gf180mcu_fd_io__fill10 FILLER_186();
  gf180mcu_fd_io__fill5 FILLER_187();
  gf180mcu_fd_io__asig_5p0 VBIAS_A2(.ASIG5V(VBIAS_A2_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_188();
  gf180mcu_fd_io__fill10 FILLER_189();
  gf180mcu_fd_io__fill5 FILLER_190();
  gf180mcu_fd_io__asig_5p0 VCM_A2(.ASIG5V(VCM_A2_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_191();
  gf180mcu_fd_io__fill10 FILLER_192();
  gf180mcu_fd_io__fill5 FILLER_193();
  gf180mcu_fd_io__dvss A_VSS_A2();
  gf180mcu_fd_io__fill10 FILLER_194();
  gf180mcu_fd_io__fill10 FILLER_195();
  gf180mcu_fd_io__fill5 FILLER_196();
  gf180mcu_fd_io__dvdd A_VDD_A2();
  gf180mcu_fd_io__fill10 FILLER_197();
  gf180mcu_fd_io__fill10 FILLER_198();
  gf180mcu_fd_io__fill5 FILLER_199();
  gf180mcu_fd_io__fill10 FILLER_200();
  gf180mcu_fd_io__fill10 FILLER_201();
  gf180mcu_fd_io__fill5 FILLER_202();
  gf180mcu_fd_io__dvdd VDD3V3_A5();
  gf180mcu_fd_io__fill10 FILLER_203();
  gf180mcu_fd_io__fill10 FILLER_204();
  gf180mcu_fd_io__fill5 FILLER_205();
  gf180mcu_fd_io__asig_5p0 VOUT_V_IF_A5(.ASIG5V(VOUT_V_IF_A5_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_206();
  gf180mcu_fd_io__brk5 f4();
  gf180mcu_fd_io__fill10 FILLER_207();
  gf180mcu_fd_io__dvss VSS_1_A3();
  gf180mcu_fd_io__fill10 FILLER_208();
  gf180mcu_fd_io__fill10 FILLER_209();
  gf180mcu_fd_io__fill5 FILLER_210();
  gf180mcu_fd_io__asig_5p0 VCM_OUT_A3(.ASIG5V(VCM_OUT_A3_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_211();
  gf180mcu_fd_io__fill10 FILLER_212();
  gf180mcu_fd_io__fill5 FILLER_213();
  gf180mcu_fd_io__asig_5p0 BCM_OUT_A3(.ASIG5V(BCM_OUT_A3_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_214();
  gf180mcu_fd_io__fill10 FILLER_215();
  gf180mcu_fd_io__fill5 FILLER_216();
  gf180mcu_fd_io__asig_5p0 CCM_OUT_A3(.ASIG5V(CCM_OUT_A3_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_217();
  gf180mcu_fd_io__fill10 FILLER_218();
  gf180mcu_fd_io__fill5 FILLER_219();
  gf180mcu_fd_io__asig_5p0 V_BIAS_IN_A3(.ASIG5V(V_BIAS_IN_A3_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_220();
  gf180mcu_fd_io__fill10 FILLER_221();
  gf180mcu_fd_io__fill5 FILLER_222();
  gf180mcu_fd_io__bi_t EN_A3(.Y(EN_A3_Y), .A(EN_A3_A), .PDRV1(EN_A3_PDRV1), .CS(EN_A3_CS), .IE(EN_A3_IE), .OE(EN_A3_OE), .PAD(EN_A3_PAD), .PD(EN_A3_PD), .PDRV0(EN_A3_PDRV0), .PU(EN_A3_PU), .SL(EN_A3_SL));
  gf180mcu_fd_io__fill10 FILLER_223();
  gf180mcu_fd_io__fill10 FILLER_224();
  gf180mcu_fd_io__fill5 FILLER_225();
  gf180mcu_fd_io__asig_5p0 V_AUX_A3(.ASIG5V(V_AUX_A3_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_226();
  gf180mcu_fd_io__fill10 FILLER_227();
  gf180mcu_fd_io__fill5 FILLER_228();
  gf180mcu_fd_io__asig_5p0 V_IN_A3(.ASIG5V(V_IN_A3_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_229();
  gf180mcu_fd_io__fill10 FILLER_230();
  gf180mcu_fd_io__fill5 FILLER_231();
  gf180mcu_fd_io__dvss VSS_2_A3();
  gf180mcu_fd_io__fill10 FILLER_232();
  gf180mcu_fd_io__fill10 FILLER_233();
  gf180mcu_fd_io__fill5 FILLER_234();
  gf180mcu_fd_io__dvdd VDD3V3_A3();
  gf180mcu_fd_io__fill10 FILLER_235();
  gf180mcu_fd_io__brk5 f5();
  gf180mcu_fd_io__fill10 FILLER_236();
  gf180mcu_fd_io__dvdd VDD_A4();
  gf180mcu_fd_io__fill10 FILLER_237();
  gf180mcu_fd_io__fill10 FILLER_238();
  gf180mcu_fd_io__fill5 FILLER_239();
  gf180mcu_fd_io__dvss VSS_A4();
  gf180mcu_fd_io__fill10 FILLER_240();
  gf180mcu_fd_io__fill10 FILLER_241();
  gf180mcu_fd_io__fill5 FILLER_242();
  gf180mcu_fd_io__bi_t EN(.Y(EN_Y), .A(EN_A), .PDRV1(EN_PDRV1), .CS(EN_CS), .IE(EN_IE), .OE(EN_OE), .PAD(EN_PAD), .PD(EN_PD), .PDRV0(EN_PDRV0), .PU(EN_PU), .SL(EN_SL));
  gf180mcu_fd_io__fill10 FILLER_243();
  gf180mcu_fd_io__fill10 FILLER_244();
  gf180mcu_fd_io__fill5 FILLER_245();
  gf180mcu_fd_io__asig_5p0 VREF(.ASIG5V(VREF_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_246();
  gf180mcu_fd_io__fill10 FILLER_247();
  gf180mcu_fd_io__fill5 FILLER_248();
  gf180mcu_fd_io__asig_5p0 VCTRL(.ASIG5V(VCTRL_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_249();
  gf180mcu_fd_io__fill10 FILLER_250();
  gf180mcu_fd_io__fill5 FILLER_251();
  gf180mcu_fd_io__asig_5p0 IBIAS(.ASIG5V(IBIAS_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_252();
  gf180mcu_fd_io__fill10 FILLER_253();
  gf180mcu_fd_io__fill5 FILLER_254();
  gf180mcu_fd_io__asig_5p0 VOUT0(.ASIG5V(VOUT0_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_255();
  gf180mcu_fd_io__fill10 FILLER_256();
  gf180mcu_fd_io__fill5 FILLER_257();
  gf180mcu_fd_io__asig_5p0 VOUT90(.ASIG5V(VOUT90_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_258();
  gf180mcu_fd_io__fill10 FILLER_259();
  gf180mcu_fd_io__fill5 FILLER_260();
  gf180mcu_fd_io__asig_5p0 VOUT180(.ASIG5V(VOUT180_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_261();
  gf180mcu_fd_io__fill10 FILLER_262();
  gf180mcu_fd_io__fill5 FILLER_263();
  gf180mcu_fd_io__asig_5p0 VOUT270(.ASIG5V(VOUT270_ASIG5V));
  gf180mcu_fd_io__fill10 FILLER_264();
  gf180mcu_fd_io__fill10 FILLER_265();
  gf180mcu_fd_io__fill5 FILLER_266();
endmodule
