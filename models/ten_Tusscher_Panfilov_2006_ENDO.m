%===============================================================================
% CellML file:   E:\My Dropbox\UniZar DropBox\Doctorado\CellML\ten_Tusscher_Panfilov_2006_ENDO.cellml
% CellML model:  tentusscher_panfilov_2006_endo_cell
% Date and time: 21/01/2011 at 10:57:40
%-------------------------------------------------------------------------------
% Conversion from CellML 1.0 to MATLAB (init) was done using COR (0.9.31.1409)
%    Copyright 2002-2011 Dr Alan Garny
%    http://cor.physiol.ox.ac.uk/ - cor@physiol.ox.ac.uk
%-------------------------------------------------------------------------------
% http://www.cellml.org/
%===============================================================================

function [dY, CompVar] = ten_Tusscher_Panfilov_2006_ENDO(time, Y, Constants, Values)

%-------------------------------------------------------------------------------
% Initial conditions
%-------------------------------------------------------------------------------

% Y = [3.164e-5, 0.9778, 0.9953, 0.8009, 3.715, 0.00013, 0.00036, 0.9068, 0.7573, 0.7225, 0.00155, -86.709, 138.4, 0.00448, 0.476, 0.0087, 10.355, 2.235e-8, 0.3212];

% YNames = {'d', 'f2', 'fCass', 'f', 'Ca_SR', 'Ca_i', 'Ca_ss', 'R_prime', 'h', 'j', 'm', 'V', 'K_i', 'Xr1', 'Xr2', 'Xs', 'Na_i', 'r', 's'};
% YUnits = {'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'millimolar', 'millimolar', 'millimolar', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'millivolt', 'millimolar', 'dimensionless', 'dimensionless', 'dimensionless', 'millimolar', 'dimensionless', 'dimensionless'};
% YComponents = {'L_type_Ca_current_d_gate', 'L_type_Ca_current_f2_gate', 'L_type_Ca_current_fCass_gate', 'L_type_Ca_current_f_gate', 'calcium_dynamics', 'calcium_dynamics', 'calcium_dynamics', 'calcium_dynamics', 'fast_sodium_current_h_gate', 'fast_sodium_current_j_gate', 'fast_sodium_current_m_gate', 'membrane', 'potassium_dynamics', 'rapid_time_dependent_potassium_current_Xr1_gate', 'rapid_time_dependent_potassium_current_Xr2_gate', 'slow_time_dependent_potassium_current_Xs_gate', 'sodium_dynamics', 'transient_outward_current_r_gate', 'transient_outward_current_s_gate'};

%-------------------------------------------------------------------------------
% State variables
%-------------------------------------------------------------------------------

% 1: d (dimensionless) (in L_type_Ca_current_d_gate)
% 2: f2 (dimensionless) (in L_type_Ca_current_f2_gate)
% 3: fCass (dimensionless) (in L_type_Ca_current_fCass_gate)
% 4: f (dimensionless) (in L_type_Ca_current_f_gate)
% 5: Ca_SR (millimolar) (in calcium_dynamics)
% 6: Ca_i (millimolar) (in calcium_dynamics)
% 7: Ca_ss (millimolar) (in calcium_dynamics)
% 8: R_prime (dimensionless) (in calcium_dynamics)
% 9: h (dimensionless) (in fast_sodium_current_h_gate)
% 10: j (dimensionless) (in fast_sodium_current_j_gate)
% 11: m (dimensionless) (in fast_sodium_current_m_gate)
% 12: V (millivolt) (in membrane)
% 13: K_i (millimolar) (in potassium_dynamics)
% 14: Xr1 (dimensionless) (in rapid_time_dependent_potassium_current_Xr1_gate)
% 15: Xr2 (dimensionless) (in rapid_time_dependent_potassium_current_Xr2_gate)
% 16: Xs (dimensionless) (in slow_time_dependent_potassium_current_Xs_gate)
% 17: Na_i (millimolar) (in sodium_dynamics)
% 18: r (dimensionless) (in transient_outward_current_r_gate)
% 19: s (dimensionless) (in transient_outward_current_s_gate)

%-------------------------------------------------------------------------------
% Constants
%-------------------------------------------------------------------------------

g_CaL = 0.0000398;   % litre_per_farad_second (in L_type_Ca_current)
g_bca = 0.000592;   % nanoS_per_picoF (in calcium_background_current)
Buf_c = 0.2;   % millimolar (in calcium_dynamics)
Buf_sr = 10.0;   % millimolar (in calcium_dynamics)
Buf_ss = 0.4;   % millimolar (in calcium_dynamics)
Ca_o = 2.0;   % millimolar (in calcium_dynamics)
EC = 1.5;   % millimolar (in calcium_dynamics)
K_buf_c = 0.001;   % millimolar (in calcium_dynamics)
K_buf_sr = 0.3;   % millimolar (in calcium_dynamics)
K_buf_ss = 0.00025;   % millimolar (in calcium_dynamics)
K_up = 0.00025;   % millimolar (in calcium_dynamics)
V_leak = 0.00036;   % per_millisecond (in calcium_dynamics)
V_rel = 0.102;   % per_millisecond (in calcium_dynamics)
V_sr = 0.001094;   % micrometre3 (in calcium_dynamics)
V_ss = 0.00005468;   % micrometre3 (in calcium_dynamics)
V_xfer = 0.0038;   % per_millisecond (in calcium_dynamics)
Vmax_up = 0.006375;   % millimolar_per_millisecond (in calcium_dynamics)
k1_prime = 0.15;   % per_millimolar2_per_millisecond (in calcium_dynamics)
k2_prime = 0.045;   % per_millimolar_per_millisecond (in calcium_dynamics)
k3 = 0.06;   % per_millisecond (in calcium_dynamics)
k4 = 0.005;   % per_millisecond (in calcium_dynamics)
max_sr = 2.5;   % dimensionless (in calcium_dynamics)
min_sr = 1.0;   % dimensionless (in calcium_dynamics)
K_pCa = 0.0005;   % millimolar (in calcium_pump_current)
g_pCa = 0.1238;   % picoA_per_picoF (in calcium_pump_current)
g_Na = 14.838;   % nanoS_per_picoF (in fast_sodium_current)
g_K1 = 5.405;   % nanoS_per_picoF (in inward_rectifier_potassium_current)
Cm = 0.185;   % microF (in membrane)
F = 96485.3415;   % coulomb_per_millimole (in membrane)
R = 8314.472;   % joule_per_mole_kelvin (in membrane)
T = 310.0;   % kelvin (in membrane)
V_c = 0.016404;   % micrometre3 (in membrane)
i_Stim_Amplitude = -52.0;   % picoA_per_picoF (in membrane)
i_Stim_PulseDuration = 1.0;   % millisecond (in membrane)
K_o = 5.4;   % millimolar (in potassium_dynamics)
g_pK = 0.0146;   % nanoS_per_picoF (in potassium_pump_current)
g_Kr = 0.153;   % nanoS_per_picoF (in rapid_time_dependent_potassium_current)
P_kna = 0.03;   % dimensionless (in reversal_potentials)
g_Ks = 0.392;   % nanoS_per_picoF (in slow_time_dependent_potassium_current)
g_bna = 0.00029;   % nanoS_per_picoF (in sodium_background_current)
K_NaCa = 1000.0;   % picoA_per_picoF (in sodium_calcium_exchanger_current)
K_sat = 0.1;   % dimensionless (in sodium_calcium_exchanger_current)
Km_Ca = 1.38;   % millimolar (in sodium_calcium_exchanger_current)
Km_Nai = 87.5;   % millimolar (in sodium_calcium_exchanger_current)
alpha = 2.5;   % dimensionless (in sodium_calcium_exchanger_current)
gamma = 0.35;   % dimensionless (in sodium_calcium_exchanger_current)
Na_o = 140.0;   % millimolar (in sodium_dynamics)
K_mNa = 40.0;   % millimolar (in sodium_potassium_pump_current)
K_mk = 1.0;   % millimolar (in sodium_potassium_pump_current)
P_NaK = 2.724;   % picoA_per_picoF (in sodium_potassium_pump_current)
g_to = 0.073;   % nanoS_per_picoF (in transient_outward_current)

reasign(Constants, Values)

%-------------------------------------------------------------------------------
% Computed variables
%-------------------------------------------------------------------------------

% alpha_d (dimensionless) (in L_type_Ca_current_d_gate)
% beta_d (dimensionless) (in L_type_Ca_current_d_gate)
% d_inf (dimensionless) (in L_type_Ca_current_d_gate)
% gamma_d (millisecond) (in L_type_Ca_current_d_gate)
% tau_d (millisecond) (in L_type_Ca_current_d_gate)
% f2_inf (dimensionless) (in L_type_Ca_current_f2_gate)
% tau_f2 (millisecond) (in L_type_Ca_current_f2_gate)
% fCass_inf (dimensionless) (in L_type_Ca_current_fCass_gate)
% tau_fCass (millisecond) (in L_type_Ca_current_fCass_gate)
% f_inf (dimensionless) (in L_type_Ca_current_f_gate)
% tau_f (millisecond) (in L_type_Ca_current_f_gate)
% i_CaL (picoA_per_picoF) (in L_type_Ca_current)
% i_b_Ca (picoA_per_picoF) (in calcium_background_current)
% Ca_i_bufc (dimensionless) (in calcium_dynamics)
% Ca_sr_bufsr (dimensionless) (in calcium_dynamics)
% Ca_ss_bufss (dimensionless) (in calcium_dynamics)
% O (dimensionless) (in calcium_dynamics)
% i_leak (millimolar_per_millisecond) (in calcium_dynamics)
% i_rel (millimolar_per_millisecond) (in calcium_dynamics)
% i_up (millimolar_per_millisecond) (in calcium_dynamics)
% i_xfer (millimolar_per_millisecond) (in calcium_dynamics)
% k1 (per_millimolar2_per_millisecond) (in calcium_dynamics)
% k2 (per_millimolar_per_millisecond) (in calcium_dynamics)
% kcasr (dimensionless) (in calcium_dynamics)
% i_p_Ca (picoA_per_picoF) (in calcium_pump_current)
% alpha_h (per_millisecond) (in fast_sodium_current_h_gate)
% beta_h (per_millisecond) (in fast_sodium_current_h_gate)
% h_inf (dimensionless) (in fast_sodium_current_h_gate)
% tau_h (millisecond) (in fast_sodium_current_h_gate)
% alpha_j (per_millisecond) (in fast_sodium_current_j_gate)
% beta_j (per_millisecond) (in fast_sodium_current_j_gate)
% j_inf (dimensionless) (in fast_sodium_current_j_gate)
% tau_j (millisecond) (in fast_sodium_current_j_gate)
% alpha_m (dimensionless) (in fast_sodium_current_m_gate)
% beta_m (dimensionless) (in fast_sodium_current_m_gate)
% m_inf (dimensionless) (in fast_sodium_current_m_gate)
% tau_m (millisecond) (in fast_sodium_current_m_gate)
% i_Na (picoA_per_picoF) (in fast_sodium_current)
% alpha_K1 (dimensionless) (in inward_rectifier_potassium_current)
% beta_K1 (dimensionless) (in inward_rectifier_potassium_current)
% i_K1 (picoA_per_picoF) (in inward_rectifier_potassium_current)
% xK1_inf (dimensionless) (in inward_rectifier_potassium_current)
% i_Stim (picoA_per_picoF) (in membrane)
% i_p_K (picoA_per_picoF) (in potassium_pump_current)
% alpha_xr1 (dimensionless) (in rapid_time_dependent_potassium_current_Xr1_gate)
% beta_xr1 (dimensionless) (in rapid_time_dependent_potassium_current_Xr1_gate)
% tau_xr1 (millisecond) (in rapid_time_dependent_potassium_current_Xr1_gate)
% xr1_inf (dimensionless) (in rapid_time_dependent_potassium_current_Xr1_gate)
% alpha_xr2 (dimensionless) (in rapid_time_dependent_potassium_current_Xr2_gate)
% beta_xr2 (dimensionless) (in rapid_time_dependent_potassium_current_Xr2_gate)
% tau_xr2 (millisecond) (in rapid_time_dependent_potassium_current_Xr2_gate)
% xr2_inf (dimensionless) (in rapid_time_dependent_potassium_current_Xr2_gate)
% i_Kr (picoA_per_picoF) (in rapid_time_dependent_potassium_current)
% E_Ca (millivolt) (in reversal_potentials)
% E_K (millivolt) (in reversal_potentials)
% E_Ks (millivolt) (in reversal_potentials)
% E_Na (millivolt) (in reversal_potentials)
% alpha_xs (dimensionless) (in slow_time_dependent_potassium_current_Xs_gate)
% beta_xs (dimensionless) (in slow_time_dependent_potassium_current_Xs_gate)
% tau_xs (millisecond) (in slow_time_dependent_potassium_current_Xs_gate)
% xs_inf (dimensionless) (in slow_time_dependent_potassium_current_Xs_gate)
% i_Ks (picoA_per_picoF) (in slow_time_dependent_potassium_current)
% i_b_Na (picoA_per_picoF) (in sodium_background_current)
% i_NaCa (picoA_per_picoF) (in sodium_calcium_exchanger_current)
% i_NaK (picoA_per_picoF) (in sodium_potassium_pump_current)
% r_inf (dimensionless) (in transient_outward_current_r_gate)
% tau_r (millisecond) (in transient_outward_current_r_gate)
% s_inf (dimensionless) (in transient_outward_current_s_gate)
% tau_s (millisecond) (in transient_outward_current_s_gate)
% i_to (picoA_per_picoF) (in transient_outward_current)

%-------------------------------------------------------------------------------
% Computation
%-------------------------------------------------------------------------------

% time (millisecond)

i_CaL = g_CaL*Y(1)*Y(4)*Y(2)*Y(3)*4.0*(Y(12)-15.0)*F^2.0/(R*T)*(0.25*Y(7)*exp(2.0*(Y(12)-15.0)*F/(R*T))-Ca_o)/(exp(2.0*(Y(12)-15.0)*F/(R*T))-1.0);
d_inf = 1.0/(1.0+exp((-8.0-Y(12))/7.5));
alpha_d = 1.4/(1.0+exp((-35.0-Y(12))/13.0))+0.25;
beta_d = 1.4/(1.0+exp((Y(12)+5.0)/5.0));
gamma_d = 1.0/(1.0+exp((50.0-Y(12))/20.0));
tau_d = 1.0*alpha_d*beta_d+gamma_d;
dY(1, 1) = (d_inf-Y(1))/tau_d;
f2_inf = 0.67/(1.0+exp((Y(12)+35.0)/7.0))+0.33;
tau_f2 = 562.0*exp(-(Y(12)+27.0)^2.0/240.0)+31.0/(1.0+exp((25.0-Y(12))/10.0))+80.0/(1.0+exp((Y(12)+30.0)/10.0));
dY(2, 1) = (f2_inf-Y(2))/tau_f2;
fCass_inf = 0.6/(1.0+(Y(7)/0.05)^2.0)+0.4;
tau_fCass = 80.0/(1.0+(Y(7)/0.05)^2.0)+2.0;
dY(3, 1) = (fCass_inf-Y(3))/tau_fCass;
f_inf = 1.0/(1.0+exp((Y(12)+20.0)/7.0));
tau_f = 1102.5*exp(-(Y(12)+27.0)^2.0/225.0)+200.0/(1.0+exp((13.0-Y(12))/10.0))+180.0/(1.0+exp((Y(12)+30.0)/10.0))+20.0;
dY(4, 1) = (f_inf-Y(4))/tau_f;
E_Ca = 0.5*R*T/F*log(Ca_o/Y(6));
i_b_Ca = g_bca*(Y(12)-E_Ca);
kcasr = max_sr-(max_sr-min_sr)/(1.0+(EC/Y(5))^2.0);
k1 = k1_prime/kcasr;
O = k1*Y(7)^2.0*Y(8)/(k3+k1*Y(7)^2.0);
i_rel = V_rel*O*(Y(5)-Y(7));
i_up = Vmax_up/(1.0+K_up^2.0/Y(6)^2.0);
i_leak = V_leak*(Y(5)-Y(6));
i_xfer = V_xfer*(Y(7)-Y(6));
k2 = k2_prime*kcasr;
dY(8, 1) = -k2*Y(7)*Y(8)+k4*(1.0-Y(8));
Ca_i_bufc = 1.0/(1.0+Buf_c*K_buf_c/(Y(6)+K_buf_c)^2.0);
Ca_sr_bufsr = 1.0/(1.0+Buf_sr*K_buf_sr/(Y(5)+K_buf_sr)^2.0);
Ca_ss_bufss = 1.0/(1.0+Buf_ss*K_buf_ss/(Y(7)+K_buf_ss)^2.0);
i_p_Ca = g_pCa*Y(6)/(Y(6)+K_pCa);
i_NaCa = K_NaCa*(exp(gamma*Y(12)*F/(R*T))*Y(17)^3.0*Ca_o-exp((gamma-1.0)*Y(12)*F/(R*T))*Na_o^3.0*Y(6)*alpha)/((Km_Nai^3.0+Na_o^3.0)*(Km_Ca+Ca_o)*(1.0+K_sat*exp((gamma-1.0)*Y(12)*F/(R*T))));
dY(6, 1) = Ca_i_bufc*((i_leak-i_up)*V_sr/V_c+i_xfer-1.0*(i_b_Ca+i_p_Ca-2.0*i_NaCa)*Cm/(2.0*1.0*V_c*F));
dY(5, 1) = Ca_sr_bufsr*(i_up-(i_rel+i_leak));
dY(7, 1) = Ca_ss_bufss*(-1.0*i_CaL*Cm/(2.0*1.0*V_ss*F)+i_rel*V_sr/V_ss-i_xfer*V_c/V_ss);
E_Na = R*T/F*log(Na_o/Y(17));
i_Na = g_Na*Y(11)^3.0*Y(9)*Y(10)*(Y(12)-E_Na);
h_inf = 1.0/(1.0+exp((Y(12)+71.55)/7.43))^2.0;

if (Y(12) < -40.0)
   alpha_h = 0.057*exp(-(Y(12)+80.0)/6.8);
else
   alpha_h = 0.0;
end;

if (Y(12) < -40.0)
   beta_h = 2.7*exp(0.079*Y(12))+310000.0*exp(0.3485*Y(12));
else
   beta_h = 0.77/(0.13*(1.0+exp((Y(12)+10.66)/-11.1)));
end;

tau_h = 1.0/(alpha_h+beta_h);
dY(9, 1) = (h_inf-Y(9))/tau_h;
j_inf = 1.0/(1.0+exp((Y(12)+71.55)/7.43))^2.0;

if (Y(12) < -40.0)
   alpha_j = (-25428.0*exp(0.2444*Y(12))-6.948e-6*exp(-0.04391*Y(12)))*(Y(12)+37.78)/1.0/(1.0+exp(0.311*(Y(12)+79.23)));
else
   alpha_j = 0.0;
end;

if (Y(12) < -40.0)
   beta_j = 0.02424*exp(-0.01052*Y(12))/(1.0+exp(-0.1378*(Y(12)+40.14)));
else
   beta_j = 0.6*exp(0.057*Y(12))/(1.0+exp(-0.1*(Y(12)+32.0)));
end;

tau_j = 1.0/(alpha_j+beta_j);
dY(10, 1) = (j_inf-Y(10))/tau_j;
m_inf = 1.0/(1.0+exp((-56.86-Y(12))/9.03))^2.0;
alpha_m = 1.0/(1.0+exp((-60.0-Y(12))/5.0));
beta_m = 0.1/(1.0+exp((Y(12)+35.0)/5.0))+0.1/(1.0+exp((Y(12)-50.0)/200.0));
tau_m = 1.0*alpha_m*beta_m;
dY(11, 1) = (m_inf-Y(11))/tau_m;
E_K = R*T/F*log(K_o/Y(13));
alpha_K1 = 0.1/(1.0+exp(0.06*(Y(12)-E_K-200.0)));
beta_K1 = (3.0*exp(0.0002*(Y(12)-E_K+100.0))+exp(0.1*(Y(12)-E_K-10.0)))/(1.0+exp(-0.5*(Y(12)-E_K)));
xK1_inf = alpha_K1/(alpha_K1+beta_K1);
i_K1 = g_K1*xK1_inf*sqrt(K_o/5.4)*(Y(12)-E_K);

if (time <= i_Stim_PulseDuration)
   i_Stim = i_Stim_Amplitude;
else
   i_Stim = 0.0;
end;

i_to = g_to*Y(18)*Y(19)*(Y(12)-E_K);
i_Kr = g_Kr*sqrt(K_o/5.4)*Y(14)*Y(15)*(Y(12)-E_K);
E_Ks = R*T/F*log((K_o+P_kna*Na_o)/(Y(13)+P_kna*Y(17)));
i_Ks = g_Ks*Y(16)^2.0*(Y(12)-E_Ks);
i_NaK = P_NaK*K_o/(K_o+K_mk)*Y(17)/(Y(17)+K_mNa)/(1.0+0.1245*exp(-0.1*Y(12)*F/(R*T))+0.0353*exp(-Y(12)*F/(R*T)));
i_b_Na = g_bna*(Y(12)-E_Na);
i_p_K = g_pK*(Y(12)-E_K)/(1.0+exp((25.0-Y(12))/5.98));
dY(12, 1) = -(i_K1+i_to+i_Kr+i_Ks+i_CaL+i_NaK+i_Na+i_b_Na+i_NaCa+i_b_Ca+i_p_K+i_p_Ca+i_Stim);
dY(13, 1) = -1.0*(i_K1+i_to+i_Kr+i_Ks+i_p_K+i_Stim-2.0*i_NaK)/(1.0*V_c*F)*Cm;
xr1_inf = 1.0/(1.0+exp((-26.0-Y(12))/7.0));
alpha_xr1 = 450.0/(1.0+exp((-45.0-Y(12))/10.0));
beta_xr1 = 6.0/(1.0+exp((Y(12)+30.0)/11.5));
tau_xr1 = 1.0*alpha_xr1*beta_xr1;
dY(14, 1) = (xr1_inf-Y(14))/tau_xr1;
xr2_inf = 1.0/(1.0+exp((Y(12)+88.0)/24.0));
alpha_xr2 = 3.0/(1.0+exp((-60.0-Y(12))/20.0));
beta_xr2 = 1.12/(1.0+exp((Y(12)-60.0)/20.0));
tau_xr2 = 1.0*alpha_xr2*beta_xr2;
dY(15, 1) = (xr2_inf-Y(15))/tau_xr2;
xs_inf = 1.0/(1.0+exp((-5.0-Y(12))/14.0));
alpha_xs = 1400.0/sqrt(1.0+exp((5.0-Y(12))/6.0));
beta_xs = 1.0/(1.0+exp((Y(12)-35.0)/15.0));
tau_xs = 1.0*alpha_xs*beta_xs+80.0;
dY(16, 1) = (xs_inf-Y(16))/tau_xs;
dY(17, 1) = -1.0*(i_Na+i_b_Na+3.0*i_NaK+3.0*i_NaCa)/(1.0*V_c*F)*Cm;
r_inf = 1.0/(1.0+exp((20.0-Y(12))/6.0));
tau_r = 9.5*exp(-(Y(12)+40.0)^2.0/1800.0)+0.8;
dY(18, 1) = (r_inf-Y(18))/tau_r;
s_inf = 1.0/(1.0+exp((Y(12)+28.0)/5.0));
tau_s = 1000.0*exp(-(Y(12)+67.0)^2.0/1000.0)+8.0;
dY(19, 1) = (s_inf-Y(19))/tau_s;

CompVar = [alpha_d beta_d d_inf gamma_d tau_d f2_inf tau_f2 fCass_inf tau_fCass f_inf tau_f i_CaL i_b_Ca Ca_i_bufc Ca_sr_bufsr Ca_ss_bufss O i_leak i_rel i_up i_xfer k1 k2 kcasr i_p_Ca alpha_h beta_h h_inf tau_h alpha_j beta_j j_inf tau_j alpha_m beta_m m_inf tau_m i_Na alpha_K1 beta_K1 i_K1 xK1_inf i_Stim i_p_K alpha_xr1 beta_xr1 tau_xr1 xr1_inf alpha_xr2 beta_xr2 tau_xr2 xr2_inf i_Kr E_Ca E_K E_Ks E_Na alpha_xs beta_xs tau_xs xs_inf i_Ks i_b_Na i_NaCa i_NaK r_inf tau_r s_inf tau_s i_to ];

%===============================================================================
% End of file
%===============================================================================
