%===============================================================================
% CellML file:   E:\My Dropbox\UniZar DropBox\Doctorado\CellML\Carro_Rodriguez_Laguna_Pueyo_2011_EPI.cellml
% CellML model:  Carro_Rodriguez_Laguna_Pueyo_CinC2010_EPI
% Date and time: 21/01/2011 at 10:14:26
%-------------------------------------------------------------------------------
% Conversion from CellML 1.0 to MATLAB (init) was done using COR (0.9.31.1409)
%    Copyright 2002-2011 Dr Alan Garny
%    http://cor.physiol.ox.ac.uk/ - cor@physiol.ox.ac.uk
%-------------------------------------------------------------------------------
% http://www.cellml.org/
%===============================================================================

function [dY, CompVar] = Carro_Rodriguez_Laguna_Pueyo_2011_EPI(t, Y, Constants, Values)

%-------------------------------------------------------------------------------
% Initial conditions
%-------------------------------------------------------------------------------

% Y = [6.093596e-1, 9.658067e-5, 2.038197e-4, 1.184305e-4, 1.258048e0, 3.267494e-4, 2.520383e-3, 1.369529e-1, 2.373753e-3, 1.225914e-1, 8.12201e-3, 9.757237e-3, 7.13497e-1, 7.128671e-1, 2.163678e-3, 8.053908e-2, 1.235381e-1, 8.563314e-3, 1.097424e-2, 1.871177e-6, 9.804391e-1, 9.99401e-1, 2.847118e-2, 1.692189e-2, 1.516232e-2, 1.411382e-7, 1.126209e-6, 8.886338e-1, 3.549354e-3, 3.796195e0, 8.283308e-1, 1.007825e1, 1.007931e1, 1.00781e1, 3.584625e-4, 3.584727e-4, 9.999976e-1, 8.087629e-1, -8.413368e1];

% YNames = {'Ca_SR', 'Ca_i', 'Ca_j', 'Ca_sl', 'Csqn_b', 'CaM', 'Myo_c', 'Myo_m', 'SRB', 'TnC_h_c', 'TnC_h_m', 'TnC_l', 'h', 'j', 'm', 'SLH_j', 'SLH_sl', 'SLL_j', 'SLL_sl', 'd', 'f', 'f_2', 'f_Ca_B_j', 'f_Ca_B_sl', 'x_Kr', 'Ry_Ri', 'Ry_Ro', 'Ry_Rr', 'x_Ks', 'Na_B_j', 'Na_B_sl', 'Na_i', 'Na_j', 'Na_sl', 'x_to_f', 'x_to_s', 'y_to_f', 'y_to_s', 'V'};
% YUnits = {'millimolar', 'millimolar', 'millimolar', 'millimolar', 'millimolar', 'millimolar', 'millimolar', 'millimolar', 'millimolar', 'millimolar', 'millimolar', 'millimolar', 'dimensionless', 'dimensionless', 'dimensionless', 'millimolar', 'millimolar', 'millimolar', 'millimolar', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'millimolar', 'millimolar', 'millimolar', 'millimolar', 'millimolar', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'millivolti'};

% YComponents = {'Calcium_Concentrations', 'Calcium_Concentrations', 'Calcium_Concentrations', 'Calcium_Concentrations', 'Calcium_Concentrations', 'Cytosolic_Ca_Buffers', 'Cytosolic_Ca_Buffers', 'Cytosolic_Ca_Buffers', 'Cytosolic_Ca_Buffers', 'Cytosolic_Ca_Buffers', 'Cytosolic_Ca_Buffers', 'Cytosolic_Ca_Buffers', 'Fast_Na_Current', 'Fast_Na_Current', 'Fast_Na_Current', 'Junctional_and_SL_Ca_Buffers', 'Junctional_and_SL_Ca_Buffers', 'Junctional_and_SL_Ca_Buffers', 'Junctional_and_SL_Ca_Buffers', 'L_Type_Calcium_Current', 'L_Type_Calcium_Current', 'L_Type_Calcium_Current', 'L_Type_Calcium_Current', 'L_Type_Calcium_Current', 'Rapidly_Activating_K_Current', 'SR_Fluxes', 'SR_Fluxes', 'SR_Fluxes', 'Slowly_Activating_K_Current', 'Sodium_Concentrations', 'Sodium_Concentrations', 'Sodium_Concentrations', 'Sodium_Concentrations', 'Sodium_Concentrations', 'Transient_Outward_K_Current', 'Transient_Outward_K_Current', 'Transient_Outward_K_Current', 'Transient_Outward_K_Current', 'membrane'};

%-------------------------------------------------------------------------------
% State variables
%-------------------------------------------------------------------------------

% 1: Ca_SR (millimolar) (in Calcium_Concentrations)
% 2: Ca_i (millimolar) (in Calcium_Concentrations)
% 3: Ca_j (millimolar) (in Calcium_Concentrations)
% 4: Ca_sl (millimolar) (in Calcium_Concentrations)
% 5: Csqn_b (millimolar) (in Calcium_Concentrations)
% 6: CaM (millimolar) (in Cytosolic_Ca_Buffers)
% 7: Myo_c (millimolar) (in Cytosolic_Ca_Buffers)
% 8: Myo_m (millimolar) (in Cytosolic_Ca_Buffers)
% 9: SRB (millimolar) (in Cytosolic_Ca_Buffers)
% 10: TnC_h_c (millimolar) (in Cytosolic_Ca_Buffers)
% 11: TnC_h_m (millimolar) (in Cytosolic_Ca_Buffers)
% 12: TnC_l (millimolar) (in Cytosolic_Ca_Buffers)
% 13: h (dimensionless) (in Fast_Na_Current)
% 14: j (dimensionless) (in Fast_Na_Current)
% 15: m (dimensionless) (in Fast_Na_Current)
% 16: SLH_j (millimolar) (in Junctional_and_SL_Ca_Buffers)
% 17: SLH_sl (millimolar) (in Junctional_and_SL_Ca_Buffers)
% 18: SLL_j (millimolar) (in Junctional_and_SL_Ca_Buffers)
% 19: SLL_sl (millimolar) (in Junctional_and_SL_Ca_Buffers)
% 20: d (dimensionless) (in L_Type_Calcium_Current)
% 21: f (dimensionless) (in L_Type_Calcium_Current)
% 22: f_2 (dimensionless) (in L_Type_Calcium_Current)
% 23: f_Ca_B_j (dimensionless) (in L_Type_Calcium_Current)
% 24: f_Ca_B_sl (dimensionless) (in L_Type_Calcium_Current)
% 25: x_Kr (dimensionless) (in Rapidly_Activating_K_Current)
% 26: Ry_Ri (dimensionless) (in SR_Fluxes)
% 27: Ry_Ro (dimensionless) (in SR_Fluxes)
% 28: Ry_Rr (dimensionless) (in SR_Fluxes)
% 29: x_Ks (dimensionless) (in Slowly_Activating_K_Current)
% 30: Na_B_j (millimolar) (in Sodium_Concentrations)
% 31: Na_B_sl (millimolar) (in Sodium_Concentrations)
% 32: Na_i (millimolar) (in Sodium_Concentrations)
% 33: Na_j (millimolar) (in Sodium_Concentrations)
% 34: Na_sl (millimolar) (in Sodium_Concentrations)
% 35: x_to_f (dimensionless) (in Transient_Outward_K_Current)
% 36: x_to_s (dimensionless) (in Transient_Outward_K_Current)
% 37: y_to_f (dimensionless) (in Transient_Outward_K_Current)
% 38: y_to_s (dimensionless) (in Transient_Outward_K_Current)
% 39: V (millivolt) (in membrane)

%-------------------------------------------------------------------------------
% Constants
%-------------------------------------------------------------------------------

G_Ca_B = 5.513e-4;   % milliS_per_microF (in Background_Ca_Current)
G_Cl_B = 9.0e-3;   % milliS_per_microF (in Background_Cl_Current)
G_Na_B = 0.597e-3;   % milliS_per_microF (in Background_Na_Current)
G_ClCa = 0.054813;   % milliS_per_microF (in Ca_Activated_Cl_Current)
Kd_ClCa = 100.0e-3;   % millimolar (in Ca_Activated_Cl_Current)
Ca_o = 1.8;   % millimolar (in Calcium_Concentrations)
k_off_csqn = 65.0;   % per_millis (in Calcium_Concentrations)
k_on_csqn = 100.0;   % per_milliM_per_millis (in Calcium_Concentrations)
Cl_i = 15.0;   % millimolar (in Chlorine_Concentrations)
Cl_o = 150.0;   % millimolar (in Chlorine_Concentrations)
B_max_CaM = 24.0e-3;   % millimolar (in Cytosolic_Ca_Buffers)
B_max_SR = 17.1e-3;   % millimolar (in Cytosolic_Ca_Buffers)
B_max_TnC_high = 140.0e-3;   % millimolar (in Cytosolic_Ca_Buffers)
B_max_TnC_low = 70.0e-3;   % millimolar (in Cytosolic_Ca_Buffers)
B_max_myosin = 140.0e-3;   % millimolar (in Cytosolic_Ca_Buffers)
k_off_CaM = 238.0e-3;   % per_millis (in Cytosolic_Ca_Buffers)
k_off_SR = 60.0e-3;   % per_millis (in Cytosolic_Ca_Buffers)
k_off_TnC_h_Ca = 0.032e-3;   % per_millis (in Cytosolic_Ca_Buffers)
k_off_TnC_h_Mg = 3.33e-3;   % per_millis (in Cytosolic_Ca_Buffers)
k_off_TnC_l = 19.6e-3;   % per_millis (in Cytosolic_Ca_Buffers)
k_off_myo_Ca = 0.46e-3;   % per_millis (in Cytosolic_Ca_Buffers)
k_off_myo_Mg = 0.057e-3;   % per_millis (in Cytosolic_Ca_Buffers)
k_on_CaM = 34.0;   % per_milliM_per_millis (in Cytosolic_Ca_Buffers)
k_on_SR = 100.0;   % per_milliM_per_millis (in Cytosolic_Ca_Buffers)
k_on_TnC_h_Ca = 2.37;   % per_milliM_per_millis (in Cytosolic_Ca_Buffers)
k_on_TnC_h_Mg = 3.0e-3;   % per_milliM_per_millis (in Cytosolic_Ca_Buffers)
k_on_TnC_l = 32.7;   % per_milliM_per_millis (in Cytosolic_Ca_Buffers)
k_on_myo_Ca = 13.8;   % per_milliM_per_millis (in Cytosolic_Ca_Buffers)
k_on_myo_Mg = 0.0157;   % per_milliM_per_millis (in Cytosolic_Ca_Buffers)
G_Na = 18.86;   % milliS_per_microF (in Fast_Na_Current)
G_K1 = 0.57153;   % milliS_per_microF (in Inward_Rectifier_K_Current)
k_off_sl_h = 30.0e-3;   % per_millis (in Junctional_and_SL_Ca_Buffers)
k_off_sl_l = 1.3;   % per_millis (in Junctional_and_SL_Ca_Buffers)
k_on_sl_h = 100.0;   % per_milliM_per_millis (in Junctional_and_SL_Ca_Buffers)
k_on_sl_l = 100.0;   % per_milliM_per_millis (in Junctional_and_SL_Ca_Buffers)
p_Ca = 1.9887e-4;   % litre_per_farad_millisecond (in L_Type_Calcium_Current)
p_K = 5.4675e-8;   % litre_per_farad_millisecond (in L_Type_Calcium_Current)
p_Na = 3.0375e-9;   % litre_per_farad_millisecond (in L_Type_Calcium_Current)
Mg_i = 1.0;   % millimolar (in Magnesium_Concentrations)
Ibar_NCX = 4.5;   % picoA_per_picoF (in Na_Ca_Exchanger_Current)
Kd_act = 0.15e-3;   % millimolar (in Na_Ca_Exchanger_Current)
Km_Ca_i = 3.59e-3;   % millimolar (in Na_Ca_Exchanger_Current)
Km_Ca_o = 1.3;   % millimolar (in Na_Ca_Exchanger_Current)
Km_Na_i = 12.29;   % millimolar (in Na_Ca_Exchanger_Current)
Km_Na_o = 87.5;   % millimolar (in Na_Ca_Exchanger_Current)
k_sat = 0.32;   % dimensionless (in Na_Ca_Exchanger_Current)
nu = 0.27;   % dimensionless (in Na_Ca_Exchanger_Current)
Ibar_NaK = 0.99;   % picoA_per_picoF (in Na_K_Pump_Current)
Km_Ko = 1.5;   % millimolar (in Na_K_Pump_Current)
Km_Naip = 11.0;   % millimolar (in Na_K_Pump_Current)
p_Na_K = 0.01833;   % dimensionless (in Nerst_Potentials)
G_Kp = 0.002;   % milliS_per_microF (in Plateau_K_Current)
K_i = 138.0;   % millimolar (in Potassium_Concentrations)
K_o = 5.4;   % millimolar (in Potassium_Concentrations)
G_Kr = 0.035;   % milliS_per_microF (in Rapidly_Activating_K_Current)
Km_f = 0.246e-3;   % millimolar (in SR_Fluxes)
Km_r = 1.7;   % millimolar (in SR_Fluxes)
Max_SR = 15.0;   % dimensionless (in SR_Fluxes)
Min_SR = 1.0;   % dimensionless (in SR_Fluxes)
V_max_SR_CaP = 5.3114e-3;   % milliM_per_millis (in SR_Fluxes)
ec50_SR = 0.45;   % millimolar (in SR_Fluxes)
hill_SR_CaP = 1.787;   % dimensionless (in SR_Fluxes)
ki_Ca = 0.5;   % per_milliM_per_millis (in SR_Fluxes)
ki_m = 0.005;   % per_millis (in SR_Fluxes)
ko_Ca = 10.0;   % per_milliM2_per_millis (in SR_Fluxes)
ko_m = 0.06;   % per_millis (in SR_Fluxes)
ks = 25.0;   % per_millis (in SR_Fluxes)
Ibar_PMCA = 0.0673;   % picoA_per_picoF (in Sarcolemmal_Ca_Pump_Current)
Km_P_Ca = 0.5e-3;   % millimolar (in Sarcolemmal_Ca_Pump_Current)
G_Ks_junc = 0.0035;   % milliS_per_microF (in Slowly_Activating_K_Current)
G_Ks_sl = 0.0035;   % milliS_per_microF (in Slowly_Activating_K_Current)
B_max_Na_j = 7.561;   % millimolar (in Sodium_Concentrations)
B_max_Na_sl = 1.65;   % millimolar (in Sodium_Concentrations)
Na_o = 140.0;   % millimolar (in Sodium_Concentrations)
k_off_Na = 1.0e-3;   % per_millis (in Sodium_Concentrations)
k_on_Na = 0.1e-3;   % per_milliM_per_millis (in Sodium_Concentrations)
G_to_f = 0.1144;   % milliS_per_microF (in Transient_Outward_K_Current)
G_to_s = 0.0156;   % milliS_per_microF (in Transient_Outward_K_Current)
C_mem = 1.381e-10;   % farad (in membrane)
F_junc = 0.11;   % dimensionless (in membrane)
F_junc_Ca_L = 0.9;   % dimensionless (in membrane)
Frdy = 96485.0;   % coulomb_per_mole (in membrane)
I_Stim_Amplitude = 40.0;   % picoA_per_picoF (in membrane)
I_Stim_PulseDuration = 1.0;   % millisecond (in membrane)
I_Stim_Start = 0.0;   % millisecond (in membrane)
J_Ca_juncsl = 8.2413e-13;   % L_per_millis (in membrane)
J_Ca_slmyo = 3.7243e-12;   % L_per_millis (in membrane)
J_Na_juncsl = 1.8313e-14;   % L_per_millis (in membrane)
J_Na_slmyo = 1.6386e-12;   % L_per_millis (in membrane)
Length_cell = 100.0e-5;   % decimetre (in membrane)
R = 8314.0;   % joule_per_kmole_kelvin (in membrane)
Radius_cell = 10.25e-5;   % decimetre (in membrane)
T = 310.0;   % kelvin (in membrane)
A_to = 1; % dimensionless (in Transient_Outward_K_Current)
A_Kr = 1; % dimensionless (in Rapidly_Activating_K_Current)
A_Ks = 1; % dimensionless (in Slowly_Activating_K_Current)
A_K1 = 1; % dimensionless (in Inward_K_Rectifier_Current)
A_NaK = 1; % dimensionless (in Sodium_Potasium_Pump_Current)
A_CaL = 1; % dimensionless (in L_Type_Calcium_Current)
A_Kp = 1; % dimensionless (in Plateau_K_Current)
 
reasign(Constants, Values)

%-------------------------------------------------------------------------------
% Computed variables
%-------------------------------------------------------------------------------

% I_Ca_Bk (picoA_per_picoF) (in Background_Ca_Current)
% I_Ca_Bk_junc (picoA_per_picoF) (in Background_Ca_Current)
% I_Ca_Bk_sl (picoA_per_picoF) (in Background_Ca_Current)
% I_Cl_Bk (picoA_per_picoF) (in Background_Cl_Current)
% I_Na_Bk (picoA_per_picoF) (in Background_Na_Current)
% I_Na_Bk_junc (picoA_per_picoF) (in Background_Na_Current)
% I_Na_Bk_sl (picoA_per_picoF) (in Background_Na_Current)
% I_ClCa (picoA_per_picoF) (in Ca_Activated_Cl_Current)
% I_ClCa_junc (picoA_per_picoF) (in Ca_Activated_Cl_Current)
% I_ClCa_sl (picoA_per_picoF) (in Ca_Activated_Cl_Current)
% B_max_csqn (millimolar) (in Calcium_Concentrations)
% I_Ca_tot_junc (picoA_per_picoF) (in Calcium_Concentrations)
% I_Ca_tot_sl (picoA_per_picoF) (in Calcium_Concentrations)
% J_Ca_B_cytosol (milliM_per_millis) (in Cytosolic_Ca_Buffers)
% I_Na (picoA_per_picoF) (in Fast_Na_Current)
% I_Na_junc (picoA_per_picoF) (in Fast_Na_Current)
% I_Na_sl (picoA_per_picoF) (in Fast_Na_Current)
% a_h (dimensionless) (in Fast_Na_Current)
% a_j (dimensionless) (in Fast_Na_Current)
% b_h (dimensionless) (in Fast_Na_Current)
% b_j (dimensionless) (in Fast_Na_Current)
% h_ss (dimensionless) (in Fast_Na_Current)
% j_ss (dimensionless) (in Fast_Na_Current)
% m_ss (dimensionless) (in Fast_Na_Current)
% tau_h (millisecond) (in Fast_Na_Current)
% tau_j (millisecond) (in Fast_Na_Current)
% tau_m (millisecond) (in Fast_Na_Current)
% I_K1 (picoA_per_picoF) (in Inward_Rectifier_K_Current)
% K1_ss (dimensionless) (in Inward_Rectifier_K_Current)
% a_K1 (dimensionless) (in Inward_Rectifier_K_Current)
% b_K1 (dimensionless) (in Inward_Rectifier_K_Current)
% B_max_SL_high_j (millimolar) (in Junctional_and_SL_Ca_Buffers)
% B_max_SL_high_sl (millimolar) (in Junctional_and_SL_Ca_Buffers)
% B_max_SL_low_j (millimolar) (in Junctional_and_SL_Ca_Buffers)
% B_max_SL_low_sl (millimolar) (in Junctional_and_SL_Ca_Buffers)
% J_Ca_B_junction (milliM_per_millis) (in Junctional_and_SL_Ca_Buffers)
% J_Ca_B_sl (milliM_per_millis) (in Junctional_and_SL_Ca_Buffers)
% I_Ca (picoA_per_picoF) (in L_Type_Calcium_Current)
% I_Ca_K (picoA_per_picoF) (in L_Type_Calcium_Current)
% I_Ca_L (picoA_per_picoF) (in L_Type_Calcium_Current)
% I_Ca_Na (picoA_per_picoF) (in L_Type_Calcium_Current)
% I_Ca_Na_junc (picoA_per_picoF) (in L_Type_Calcium_Current)
% I_Ca_Na_sl (picoA_per_picoF) (in L_Type_Calcium_Current)
% I_Ca_junc (picoA_per_picoF) (in L_Type_Calcium_Current)
% I_Ca_sl (picoA_per_picoF) (in L_Type_Calcium_Current)
% Ibar_Ca_j (picoA_per_picoF) (in L_Type_Calcium_Current)
% Ibar_Ca_sl (picoA_per_picoF) (in L_Type_Calcium_Current)
% Ibar_K (picoA_per_picoF) (in L_Type_Calcium_Current)
% Ibar_Na_j (picoA_per_picoF) (in L_Type_Calcium_Current)
% Ibar_Na_sl (picoA_per_picoF) (in L_Type_Calcium_Current)
% alpha_d (millisecond) (in L_Type_Calcium_Current)
% alpha_f (millisecond) (in L_Type_Calcium_Current)
% alpha_f_2 (millisecond) (in L_Type_Calcium_Current)
% beta_d (dimensionless) (in L_Type_Calcium_Current)
% beta_f (millisecond) (in L_Type_Calcium_Current)
% beta_f_2 (millisecond) (in L_Type_Calcium_Current)
% d_ss (dimensionless) (in L_Type_Calcium_Current)
% f_2_ss (dimensionless) (in L_Type_Calcium_Current)
% f_ss (dimensionless) (in L_Type_Calcium_Current)
% gamma_d (millisecond) (in L_Type_Calcium_Current)
% gamma_f (millisecond) (in L_Type_Calcium_Current)
% gamma_f_2 (millisecond) (in L_Type_Calcium_Current)
% tau_d (millisecond) (in L_Type_Calcium_Current)
% tau_f (millisecond) (in L_Type_Calcium_Current)
% tau_f_2 (millisecond) (in L_Type_Calcium_Current)
% I_ncx (picoA_per_picoF) (in Na_Ca_Exchanger_Current)
% I_ncx_junc (picoA_per_picoF) (in Na_Ca_Exchanger_Current)
% I_ncx_sl (picoA_per_picoF) (in Na_Ca_Exchanger_Current)
% Ka_junc (dimensionless) (in Na_Ca_Exchanger_Current)
% Ka_sl (dimensionless) (in Na_Ca_Exchanger_Current)
% s1_junc (millimolar4) (in Na_Ca_Exchanger_Current)
% s1_sl (millimolar4) (in Na_Ca_Exchanger_Current)
% s2_junc (millimolar4) (in Na_Ca_Exchanger_Current)
% s2_sl (millimolar4) (in Na_Ca_Exchanger_Current)
% s3_junc (millimolar4) (in Na_Ca_Exchanger_Current)
% s3_sl (millimolar4) (in Na_Ca_Exchanger_Current)
% I_NaK (picoA_per_picoF) (in Na_K_Pump_Current)
% I_NaK_junc (picoA_per_picoF) (in Na_K_Pump_Current)
% I_NaK_sl (picoA_per_picoF) (in Na_K_Pump_Current)
% f_NaK (dimensionless) (in Na_K_Pump_Current)
% sigma (dimensionless) (in Na_K_Pump_Current)
% E_Ca_junc (millivolt) (in Nerst_Potentials)
% E_Ca_sl (millivolt) (in Nerst_Potentials)
% E_Cl (millivolt) (in Nerst_Potentials)
% E_K (millivolt) (in Nerst_Potentials)
% E_Ks (millivolt) (in Nerst_Potentials)
% E_Na_junc (millivolt) (in Nerst_Potentials)
% E_Na_sl (millivolt) (in Nerst_Potentials)
% I_Kp (picoA_per_picoF) (in Plateau_K_Current)
% kp_Kp (dimensionless) (in Plateau_K_Current)
% I_K_tot (picoA_per_picoF) (in Potassium_Concentrations)
% I_Kr (picoA_per_picoF) (in Rapidly_Activating_K_Current)
% r_Kr (dimensionless) (in Rapidly_Activating_K_Current)
% tau_xr (millisecond) (in Rapidly_Activating_K_Current)
% x_r_ss (dimensionless) (in Rapidly_Activating_K_Current)
% J_SR_Ca_rel (milliM_per_millis) (in SR_Fluxes)
% J_SR_leak (milliM_per_millis) (in SR_Fluxes)
% J_ser_Ca (milliM_per_millis) (in SR_Fluxes)
% RI (dimensionless) (in SR_Fluxes)
% k_Ca_SR (dimensionless) (in SR_Fluxes)
% ki_SR_Ca (per_milliM_per_millis) (in SR_Fluxes)
% ko_SR_Ca (per_milliM2_per_millis) (in SR_Fluxes)
% I_pCa (picoA_per_picoF) (in Sarcolemmal_Ca_Pump_Current)
% I_pCa_junc (picoA_per_picoF) (in Sarcolemmal_Ca_Pump_Current)
% I_pCa_sl (picoA_per_picoF) (in Sarcolemmal_Ca_Pump_Current)
% I_Ks (picoA_per_picoF) (in Slowly_Activating_K_Current)
% I_Ks_junc (picoA_per_picoF) (in Slowly_Activating_K_Current)
% I_Ks_sl (picoA_per_picoF) (in Slowly_Activating_K_Current)
% tau_xs (millisecond) (in Slowly_Activating_K_Current)
% x_s_ss (dimensionless) (in Slowly_Activating_K_Current)
% I_Na_tot_junc (picoA_per_picoF) (in Sodium_Concentrations)
% I_Na_tot_sl (picoA_per_picoF) (in Sodium_Concentrations)
% I_to (picoA_per_picoF) (in Transient_Outward_K_Current)
% I_to_f (picoA_per_picoF) (in Transient_Outward_K_Current)
% I_to_s (picoA_per_picoF) (in Transient_Outward_K_Current)
% tau_x_tof (millisecond) (in Transient_Outward_K_Current)
% tau_x_tos (millisecond) (in Transient_Outward_K_Current)
% tau_y_tof (millisecond) (in Transient_Outward_K_Current)
% tau_y_tos (millisecond) (in Transient_Outward_K_Current)
% x_to_ss (dimensionless) (in Transient_Outward_K_Current)
% y_to_ss (dimensionless) (in Transient_Outward_K_Current)
% F_sl (dimensionless) (in membrane)
% F_sl_Ca_L (dimensionless) (in membrane)
% FoRT (per_milliV) (in membrane)
% I_Ca_tot (picoA_per_picoF) (in membrane)
% I_Cl_tot (picoA_per_picoF) (in membrane)
% I_Na_tot (picoA_per_picoF) (in membrane)
% I_Stim (picoA_per_picoF) (in membrane)
% I_tot (picoA_per_picoF) (in membrane)
% V_cell (litre) (in membrane)
% V_junc (litre) (in membrane)
% V_myo (litre) (in membrane)
% V_sl (litre) (in membrane)
% V_sr (litre) (in membrane)

%-------------------------------------------------------------------------------
% Computation
%-------------------------------------------------------------------------------

% t (millisecond)

FoRT = Frdy/(R*T);
E_Ca_junc = 1.0/(2.0*FoRT)*log(Ca_o/Y(3));
I_Ca_Bk_junc = F_junc*G_Ca_B*(Y(39)-E_Ca_junc);
F_sl = 1.0-F_junc;
E_Ca_sl = 1.0/(2.0*FoRT)*log(Ca_o/Y(4));
I_Ca_Bk_sl = F_sl*G_Ca_B*(Y(39)-E_Ca_sl);
I_Ca_Bk = I_Ca_Bk_junc+I_Ca_Bk_sl;
E_Cl = 1.0/FoRT*log(Cl_i/Cl_o);
I_Cl_Bk = G_Cl_B*(Y(39)-E_Cl);
E_Na_junc = 1.0/FoRT*log(Na_o/Y(33));
I_Na_Bk_junc = F_junc*G_Na_B*(Y(39)-E_Na_junc);
E_Na_sl = 1.0/FoRT*log(Na_o/Y(34));
I_Na_Bk_sl = F_sl*G_Na_B*(Y(39)-E_Na_sl);
I_Na_Bk = I_Na_Bk_junc+I_Na_Bk_sl;
I_ClCa_junc = F_junc*G_ClCa/(1.0+Kd_ClCa/Y(3))*(Y(39)-E_Cl);
I_ClCa_sl = F_sl*G_ClCa/(1.0+Kd_ClCa/Y(4))*(Y(39)-E_Cl);
I_ClCa = I_ClCa_junc+I_ClCa_sl;
Ibar_Ca_j = A_CaL * p_Ca*Y(39)*Frdy*FoRT*(Y(3)*exp(2.0*Y(39)*FoRT)-Ca_o)/(exp(2.0*Y(39)*FoRT)-1.0);
I_Ca_junc = F_junc_Ca_L*Ibar_Ca_j*Y(20)*Y(21)*Y(22)*(1.0-Y(23));
I_pCa_junc = F_junc*Ibar_PMCA*Y(3)^1.6/(Km_P_Ca^1.6+Y(3)^1.6);
Ka_junc = 1.0/(1.0+(Kd_act/Y(3))^2.0);
s1_junc = exp(nu*Y(39)*FoRT)*Y(33)^3.0*Ca_o;
s2_junc = exp((nu-1.0)*Y(39)*FoRT)*Na_o^3.0*Y(3);
s3_junc = Km_Ca_i*Na_o^3.0*(1.0+(Y(33)/Km_Na_i)^3.0)+Km_Na_o^3.0*Y(3)*(1.0+Y(3)/Km_Ca_i)+Km_Ca_o*Y(33)^3.0+Y(33)^3.0*Ca_o+Na_o^3.0*Y(3);
I_ncx_junc = F_junc*Ibar_NCX*Ka_junc*(s1_junc-s2_junc)/(s3_junc*(1.0+k_sat*exp((nu-1.0)*Y(39)*FoRT)));
I_Ca_tot_junc = I_Ca_junc+I_Ca_Bk_junc+I_pCa_junc-2.0*I_ncx_junc;
F_sl_Ca_L = 1.0-F_junc_Ca_L;
Ibar_Ca_sl = A_CaL * p_Ca*Y(39)*Frdy*FoRT*(Y(4)*exp(2.0*Y(39)*FoRT)-Ca_o)/(exp(2.0*Y(39)*FoRT)-1.0);
I_Ca_sl = F_sl_Ca_L*Ibar_Ca_sl*Y(20)*Y(21)*Y(22)*(1.0-Y(24));
I_pCa_sl = F_sl*Ibar_PMCA*Y(4)^1.6/(Km_P_Ca^1.6+Y(4)^1.6);
Ka_sl = 1.0/(1.0+(Kd_act/Y(4))^2.0);
s1_sl = exp(nu*Y(39)*FoRT)*Y(34)^3.0*Ca_o;
s2_sl = exp((nu-1.0)*Y(39)*FoRT)*Na_o^3.0*Y(4);
s3_sl = Km_Ca_i*Na_o^3.0*(1.0+(Y(34)/Km_Na_i)^3.0)+Km_Na_o^3.0*Y(4)*(1.0+Y(4)/Km_Ca_i)+Km_Ca_o*Y(34)^3.0+Y(34)^3.0*Ca_o+Na_o^3.0*Y(4);
I_ncx_sl = F_sl*Ibar_NCX*Ka_sl*(s1_sl-s2_sl)/(s3_sl*(1.0+k_sat*exp((nu-1.0)*Y(39)*FoRT)));
I_Ca_tot_sl = I_Ca_sl+I_Ca_Bk_sl+I_pCa_sl-2.0*I_ncx_sl;
V_cell = pi*Radius_cell^2.0*Length_cell;
V_myo = 0.65*V_cell;
V_sr = 0.035*V_cell;
B_max_csqn = 140.0e-3*V_myo/V_sr;
dY(5, 1) = k_on_csqn*Y(1)*(B_max_csqn-Y(5))-k_off_csqn*Y(5);
V_junc = 5.39e-4*V_cell;
B_max_SL_low_j = 4.6e-4*V_myo/V_junc;
dY(18, 1) = k_on_sl_l*Y(3)*(B_max_SL_low_j-Y(18))-k_off_sl_l*Y(18);
B_max_SL_high_j = 1.65e-4*V_myo/V_junc;
dY(16, 1) = k_on_sl_h*Y(3)*(B_max_SL_high_j-Y(16))-k_off_sl_h*Y(16);
J_Ca_B_junction = dY(18, 1)+dY(16, 1);
J_SR_Ca_rel = ks*Y(27)*(Y(1)-Y(3));
J_SR_leak = 5.348e-6*(Y(1)-Y(3));
dY(3, 1) = -I_Ca_tot_junc*C_mem/(V_junc*2.0*Frdy)+J_Ca_juncsl/V_junc*(Y(4)-Y(3))-J_Ca_B_junction+J_SR_Ca_rel*V_sr/V_junc+J_SR_leak*V_myo/V_junc;
V_sl = 0.02*V_cell;
B_max_SL_low_sl = 37.4e-3*V_myo/V_sl;
dY(19, 1) = k_on_sl_l*Y(4)*(B_max_SL_low_sl-Y(19))-k_off_sl_l*Y(19);
B_max_SL_high_sl = 13.4e-3*V_myo/V_sl;
dY(17, 1) = k_on_sl_h*Y(4)*(B_max_SL_high_sl-Y(17))-k_off_sl_h*Y(17);
J_Ca_B_sl = dY(19, 1)+dY(17, 1);
dY(4, 1) = -I_Ca_tot_sl*C_mem/(V_sl*2.0*Frdy)+J_Ca_juncsl/V_sl*(Y(3)-Y(4))+J_Ca_slmyo/V_sl*(Y(2)-Y(4))-J_Ca_B_sl;
J_ser_Ca = V_max_SR_CaP*((Y(2)/Km_f)^hill_SR_CaP-(Y(1)/Km_r)^hill_SR_CaP)/(1.0+(Y(2)/Km_f)^hill_SR_CaP+(Y(1)/Km_r)^hill_SR_CaP);
dY(12, 1) = k_on_TnC_l*Y(2)*(B_max_TnC_low-Y(12))-k_off_TnC_l*Y(12);
dY(10, 1) = k_on_TnC_h_Ca*Y(2)*(B_max_TnC_high-Y(10)-Y(11))-k_off_TnC_h_Ca*Y(10);
dY(11, 1) = k_on_TnC_h_Mg*Mg_i*(B_max_TnC_high-Y(10)-Y(11))-k_off_TnC_h_Mg*Y(11);
dY(6, 1) = k_on_CaM*Y(2)*(B_max_CaM-Y(6))-k_off_CaM*Y(6);
dY(7, 1) = k_on_myo_Ca*Y(2)*(B_max_myosin-Y(7)-Y(8))-k_off_myo_Ca*Y(7);
dY(8, 1) = k_on_myo_Mg*Mg_i*(B_max_myosin-Y(7)-Y(8))-k_off_myo_Mg*Y(8);
dY(9, 1) = k_on_SR*Y(2)*(B_max_SR-Y(9))-k_off_SR*Y(9);
J_Ca_B_cytosol = dY(12, 1)+dY(10, 1)+dY(11, 1)+dY(6, 1)+dY(7, 1)+dY(8, 1)+dY(9, 1);
dY(2, 1) = -J_ser_Ca*V_sr/V_myo-J_Ca_B_cytosol+J_Ca_slmyo/V_myo*(Y(4)-Y(2));
dY(1, 1) = J_ser_Ca-(J_SR_leak*V_myo/V_sr+J_SR_Ca_rel)-dY(5, 1);
m_ss = 1.0/(1.0+exp(-(56.86+Y(39))/9.03))^2.0;
tau_m = 0.1292*exp(-((Y(39)+45.79)/15.54)^2.0)+0.06487*exp(-((Y(39)-4.823)/51.12)^2.0);

if (Y(39) >= -40.0)
   a_h = 0.0;
else
   a_h = 0.057*exp(-(Y(39)+80.0)/6.8);
end;

if (Y(39) >= -40.0)
   b_h = 5.9231/(1.0+exp(-(Y(39)+10.66)/11.1));
else
   b_h = 2.7*exp(0.079*Y(39))+3.1e5*exp(0.3485*Y(39));
end;

if (Y(39) >= -40.0)
   a_j = 0.0;
else
   a_j = (-2.5428e4*exp(0.2444*Y(39))-6.948e-6*exp(-0.04391*Y(39)))*(Y(39)+37.78)/(1.0+exp(0.311*(Y(39)+79.23)));
end;

if (Y(39) >= -40.0)
   b_j = 0.6*exp(0.057*Y(39))/(1.0+exp(-0.1*(Y(39)+32.0)));
else
   b_j = 0.02424*exp(-0.01052*Y(39))/(1.0+exp(-0.1378*(Y(39)+40.14)));
end;

tau_h = 1.0/(a_h+b_h);
h_ss = 1.0/(1.0+exp((Y(39)+71.55)/7.43))^2.0;
tau_j = 1.0/(a_j+b_j);
j_ss = 1.0/(1.0+exp((Y(39)+71.55)/7.43))^2.0;
dY(15, 1) = (m_ss-Y(15))/tau_m;
dY(13, 1) = (h_ss-Y(13))/tau_h;
dY(14, 1) = (j_ss-Y(14))/tau_j;
I_Na_junc = F_junc*G_Na*Y(15)^3.0*Y(13)*Y(14)*(Y(39)-E_Na_junc);
I_Na_sl = F_sl*G_Na*Y(15)^3.0*Y(13)*Y(14)*(Y(39)-E_Na_sl);
I_Na = I_Na_junc+I_Na_sl;
E_K = 1.0/FoRT*log(K_o/K_i);
a_K1 = 4.0938/(1.0+exp(0.12165*(Y(39)-E_K-49.9344)));
b_K1 = (15.7197*exp(0.06739*(Y(39)-E_K-3.2571))+exp(0.06175*(Y(39)-E_K-594.31)))/(1.0+exp(-0.16285*(Y(39)-E_K+14.2067)));
K1_ss = a_K1/(a_K1+b_K1);
I_K1 = A_K1*G_K1*sqrt(K_o/5.4)*K1_ss*(Y(39)-E_K);
d_ss = 1.0/(1.0+exp(-(Y(39)+5.0)/6.0));
alpha_d = 1.4/(1.0+exp((-35.0-Y(39))/13.0))+0.25;
beta_d = 1.4/(1.0+exp((Y(39)+5.0)/5.0));
gamma_d = 1.0/(1.0+exp((50.0-Y(39))/20.0));
tau_d = alpha_d*beta_d+gamma_d;
f_ss = 1.0/(1.0+exp((Y(39)+20.0)/7.0));
alpha_f = 1102.5*exp(-((Y(39)+27.0)/15.0)^2.0);
beta_f = 200.0/(1.0+exp((13.0-Y(39))/10.0));
gamma_f = 180.0/(1.0+exp((Y(39)+30.0)/10.0))+20.0;
tau_f = alpha_f+beta_f+gamma_f;
f_2_ss = 0.67/(1.0+exp((Y(39)+35.0)/7.0))+0.33;
alpha_f_2 = 300.0*exp(-(Y(39)+25.0)^2.0/170.0);
beta_f_2 = 31.0/(1.0+exp((25.0-Y(39))/10.0));
gamma_f_2 = 16.0/(1.0+exp((Y(39)+30.0)/10.0));
tau_f_2 = alpha_f_2+beta_f_2+gamma_f_2;
dY(20, 1) = (d_ss-Y(20))/tau_d;
dY(21, 1) = (f_ss-Y(21))/tau_f;
dY(22, 1) = (f_2_ss-Y(22))/tau_f_2;
dY(23, 1) = 1.7*Y(3)*(1.0-Y(23))-11.9e-3*Y(23);
dY(24, 1) = 1.7*Y(4)*(1.0-Y(24))-11.9e-3*Y(24);
Ibar_K = A_CaL * p_K*Y(39)*Frdy*FoRT*(K_i*exp(Y(39)*FoRT)-K_o)/(exp(Y(39)*FoRT)-1.0);
Ibar_Na_j = A_CaL * p_Na*Y(39)*Frdy*FoRT*(Y(33)*exp(Y(39)*FoRT)-Na_o)/(exp(Y(39)*FoRT)-1.0);
Ibar_Na_sl = A_CaL * p_Na*Y(39)*Frdy*FoRT*(Y(34)*exp(Y(39)*FoRT)-Na_o)/(exp(Y(39)*FoRT)-1.0);
I_Ca = I_Ca_junc+I_Ca_sl;
I_Ca_K = Ibar_K*Y(20)*Y(21)*Y(22)*(F_junc_Ca_L*(1.0-Y(23))+F_sl_Ca_L*(1.0-Y(24)));
I_Ca_Na_junc = F_junc_Ca_L*Ibar_Na_j*Y(20)*Y(21)*Y(22)*(1.0-Y(23));
I_Ca_Na_sl = F_sl_Ca_L*Ibar_Na_sl*Y(20)*Y(21)*Y(22)*(1.0-Y(24));
I_Ca_Na = I_Ca_Na_junc+I_Ca_Na_sl;
I_Ca_L = I_Ca+I_Ca_K+I_Ca_Na;
I_ncx = I_ncx_junc+I_ncx_sl;
sigma = (exp(Na_o/67.3)-1.0)/7.0;
f_NaK = 1.0/(1.0+0.1245*exp(-0.1*Y(39)*FoRT)+0.0365*sigma*exp(-Y(39)*FoRT));
I_NaK_junc = A_NaK*F_junc*Ibar_NaK*f_NaK*K_o/((1.0+(Km_Naip/Y(33))^4.0)*(K_o+Km_Ko));
I_NaK_sl = A_NaK*F_sl*Ibar_NaK*f_NaK*K_o/((1.0+(Km_Naip/Y(34))^4.0)*(K_o+Km_Ko));
I_NaK = I_NaK_junc+I_NaK_sl;
E_Ks = 1.0/FoRT*log((K_o+p_Na_K*Na_o)/(K_i+p_Na_K*Y(32)));
kp_Kp = 1.0/(1.0+exp(7.488-Y(39)/5.98));
I_Kp = A_Kp * G_Kp*kp_Kp*(Y(39)-E_K);
I_to_s = A_to * G_to_s*Y(36)*Y(38)*(Y(39)-E_K);
I_to_f = A_to * G_to_f*Y(35)*Y(37)*(Y(39)-E_K);
I_to = I_to_s+I_to_f;
r_Kr = 1.0/(1.0+exp((Y(39)+74.0)/24.0));
I_Kr = A_Kr * G_Kr*sqrt(K_o/5.4)*Y(25)*r_Kr*(Y(39)-E_K);
I_Ks_junc = A_Ks * F_junc*G_Ks_junc*Y(29)^2.0*(Y(39)-E_Ks);
I_Ks_sl = A_Ks * F_sl*G_Ks_sl*Y(29)^2.0*(Y(39)-E_Ks);
I_Ks = I_Ks_junc+I_Ks_sl;

if ((t >= I_Stim_Start) && (t <= I_Stim_PulseDuration))
   I_Stim = I_Stim_Amplitude;
else
   I_Stim = 0.0;
end;
I_K_tot = I_to+I_Kr+I_Ks+I_K1-2.0*I_NaK+I_Ca_K+I_Kp-I_Stim;

x_r_ss = 1.0/(1.0+exp(-(Y(39)+10.0)/5.0));
tau_xr = 3300.0/((1.0+exp((-22.0-Y(39))/9.0))*(1.0+exp((Y(39)+11.0)/9.0)))+230.0/(1.0+exp((Y(39)+40.0)/20.0));
dY(25, 1) = (x_r_ss-Y(25))/tau_xr;
k_Ca_SR = Max_SR-(Max_SR-Min_SR)/(1.0+(ec50_SR/Y(1))^2.5);
ko_SR_Ca = ko_Ca/k_Ca_SR;
ki_SR_Ca = ki_Ca*k_Ca_SR;
RI = 1.0-Y(28)-Y(27)-Y(26);
dY(28, 1) = ki_m*RI-ki_SR_Ca*Y(3)*Y(28)-(ko_SR_Ca*Y(3)^2.0*Y(28)-ko_m*Y(27));
dY(27, 1) = ko_SR_Ca*Y(3)^2.0*Y(28)-ko_m*Y(27)-(ki_SR_Ca*Y(3)*Y(27)-ki_m*Y(26));
dY(26, 1) = ki_SR_Ca*Y(3)*Y(27)-ki_m*Y(26)-(ko_m*Y(26)-ko_SR_Ca*Y(3)^2.0*RI);
I_pCa = I_pCa_junc+I_pCa_sl;
x_s_ss = 1.0/(1.0+exp(-(Y(39)+3.8)/14.25));
tau_xs = 990.1/(1.0+exp(-(Y(39)+2.436)/14.12));
dY(29, 1) = (x_s_ss-Y(29))/tau_xs;
I_Na_tot_junc = I_Na_junc+I_Na_Bk_junc+3.0*I_ncx_junc+3.0*I_NaK_junc+I_Ca_Na_junc;
I_Na_tot_sl = I_Na_sl+I_Na_Bk_sl+3.0*I_ncx_sl+3.0*I_NaK_sl+I_Ca_Na_sl;
dY(30, 1) = k_on_Na*Y(33)*(B_max_Na_j-Y(30))-k_off_Na*Y(30);
dY(33, 1) = -I_Na_tot_junc*C_mem/(V_junc*Frdy)+J_Na_juncsl/V_junc*(Y(34)-Y(33))-dY(30, 1);
dY(31, 1) = k_on_Na*Y(34)*(B_max_Na_sl-Y(31))-k_off_Na*Y(31);
dY(34, 1) = -I_Na_tot_sl*C_mem/(V_sl*Frdy)+J_Na_juncsl/V_sl*(Y(33)-Y(34))+J_Na_slmyo/V_sl*(Y(32)-Y(34))-dY(31, 1);
dY(32, 1) = J_Na_slmyo/V_myo*(Y(34)-Y(32));
x_to_ss = 1.0/(1.0+exp(-(Y(39)-19.0)/13.0));
y_to_ss = 1.0/(1.0+exp((Y(39)+19.5)/5.0));
tau_x_tos = 9.0/(1.0+exp((Y(39)+3.0)/15.0))+0.5;
tau_y_tos = 800.0/(1.0+exp((Y(39)+60.0)/10.0))+30.0;
dY(36, 1) = (x_to_ss-Y(36))/tau_x_tos;
dY(38, 1) = (y_to_ss-Y(38))/tau_y_tos;
tau_x_tof = 8.5*exp(-((Y(39)+45.0)/50.0)^2.0)+0.5;
tau_y_tof = 85.0*exp(-(Y(39)+40.0)^2.0/220.0)+7.0;
dY(35, 1) = (x_to_ss-Y(35))/tau_x_tof;
dY(37, 1) = (y_to_ss-Y(37))/tau_y_tof;

I_Na_tot = I_Na_tot_junc+I_Na_tot_sl;
I_Cl_tot = I_ClCa+I_Cl_Bk;
I_Ca_tot = I_Ca_tot_junc+I_Ca_tot_sl;
I_tot = I_Na_tot+I_Cl_tot+I_Ca_tot+I_K_tot;
dY(39, 1) = -I_tot;

CompVar = [I_Ca_Bk I_Ca_Bk_junc I_Ca_Bk_sl I_Cl_Bk I_Na_Bk I_Na_Bk_junc I_Na_Bk_sl I_ClCa I_ClCa_junc I_ClCa_sl B_max_csqn I_Ca_tot_junc I_Ca_tot_sl J_Ca_B_cytosol I_Na I_Na_junc I_Na_sl a_h a_j b_h b_j h_ss j_ss m_ss tau_h tau_j tau_m I_K1 K1_ss a_K1 b_K1 B_max_SL_high_j B_max_SL_high_sl B_max_SL_low_j B_max_SL_low_sl J_Ca_B_junction J_Ca_B_sl I_Ca I_Ca_K I_Ca_L I_Ca_Na I_Ca_Na_junc I_Ca_Na_sl I_Ca_junc I_Ca_sl Ibar_Ca_j Ibar_Ca_sl Ibar_K Ibar_Na_j Ibar_Na_sl alpha_d alpha_f alpha_f_2 beta_d beta_f beta_f_2 d_ss f_2_ss f_ss gamma_d gamma_f gamma_f_2 tau_d tau_f tau_f_2 I_ncx I_ncx_junc I_ncx_sl Ka_junc Ka_sl s1_junc s1_sl s2_junc s2_sl s3_junc s3_sl I_NaK I_NaK_junc I_NaK_sl f_NaK sigma E_Ca_junc E_Ca_sl E_Cl E_K E_Ks E_Na_junc E_Na_sl I_Kp kp_Kp I_K_tot I_Kr r_Kr tau_xr x_r_ss J_SR_Ca_rel J_SR_leak J_ser_Ca RI k_Ca_SR ki_SR_Ca ko_SR_Ca I_pCa I_pCa_junc I_pCa_sl I_Ks I_Ks_junc I_Ks_sl tau_xs x_s_ss I_Na_tot_junc I_Na_tot_sl I_to I_to_f I_to_s tau_x_tof tau_x_tos tau_y_tof tau_y_tos x_to_ss y_to_ss F_sl F_sl_Ca_L FoRT I_Ca_tot I_Cl_tot I_Na_tot I_Stim I_tot V_cell V_junc V_myo V_sl V_sr ];

%===============================================================================
% End of file
%===============================================================================
