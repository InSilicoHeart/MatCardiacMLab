%===============================================================================
% CellML file:   C:\apache-tomcat-7.0.34\webapps\ROOT\modelos\ten_tusscher_model_2004_epi.cellml
% CellML model:  tentusscher_model_2004_epi
% Date and time: 09/01/2013 at 17:02:08
%-------------------------------------------------------------------------------
% Conversion from CellML 1.0 to MATLAB (init) was done using COR (0.9.31.1409)
%    Copyright 2002-2013 Dr Alan Garny
%    http://cor.physiol.ox.ac.uk/ - cor@physiol.ox.ac.uk
%-------------------------------------------------------------------------------
% http://www.cellml.org/
%===============================================================================

function [dY, CompVar] = ten_tusscher_model_2004_epi(time, Y, Constants, Values)

%-------------------------------------------------------------------------------
% Initial conditions
%-------------------------------------------------------------------------------

% Y = [0.0, 1.0, 1.0, 0.2, 0.0002, 1.0, 0.75, 0.75, 0.0, -86.2, 138.3, 0.0, 1.0, 0.0, 11.6, 0.0, 1.0];

% YNames = {'d', 'fCa', 'f', 'Ca_SR', 'Ca_i', 'g', 'h', 'j', 'm', 'V', 'K_i', 'Xr1', 'Xr2', 'Xs', 'Na_i', 'r', 's'};
% YUnits = {'dimensionless', 'dimensionless', 'dimensionless', 'millimolar', 'millimolar', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'millivolt', 'millimolar', 'dimensionless', 'dimensionless', 'dimensionless', 'millimolar', 'dimensionless', 'dimensionless'};
% YComponents = {'L_type_Ca_current_d_gate', 'L_type_Ca_current_fCa_gate', 'L_type_Ca_current_f_gate', 'calcium_dynamics', 'calcium_dynamics', 'calcium_dynamics', 'fast_sodium_current_h_gate', 'fast_sodium_current_j_gate', 'fast_sodium_current_m_gate', 'membrane', 'potassium_dynamics', 'rapid_time_dependent_potassium_current_Xr1_gate', 'rapid_time_dependent_potassium_current_Xr2_gate', 'slow_time_dependent_potassium_current_Xs_gate', 'sodium_dynamics', 'transient_outward_current_r_gate', 'transient_outward_current_s_gate'};

%-------------------------------------------------------------------------------
% State variables
%-------------------------------------------------------------------------------

% 1: d (dimensionless) (in L_type_Ca_current_d_gate)
% 2: fCa (dimensionless) (in L_type_Ca_current_fCa_gate)
% 3: f (dimensionless) (in L_type_Ca_current_f_gate)
% 4: Ca_SR (millimolar) (in calcium_dynamics)
% 5: Ca_i (millimolar) (in calcium_dynamics)
% 6: g (dimensionless) (in calcium_dynamics)
% 7: h (dimensionless) (in fast_sodium_current_h_gate)
% 8: j (dimensionless) (in fast_sodium_current_j_gate)
% 9: m (dimensionless) (in fast_sodium_current_m_gate)
% 10: V (millivolt) (in membrane)
% 11: K_i (millimolar) (in potassium_dynamics)
% 12: Xr1 (dimensionless) (in rapid_time_dependent_potassium_current_Xr1_gate)
% 13: Xr2 (dimensionless) (in rapid_time_dependent_potassium_current_Xr2_gate)
% 14: Xs (dimensionless) (in slow_time_dependent_potassium_current_Xs_gate)
% 15: Na_i (millimolar) (in sodium_dynamics)
% 16: r (dimensionless) (in transient_outward_current_r_gate)
% 17: s (dimensionless) (in transient_outward_current_s_gate)

%-------------------------------------------------------------------------------
% Constants
%-------------------------------------------------------------------------------

g_CaL = 0.000175;   % litre_per_farad_second (in L_type_Ca_current)
g_bca = 0.000592;   % nanoS_per_picoF (in calcium_background_current)
Buf_c = 0.15;   % millimolar (in calcium_dynamics)
Buf_sr = 10.0;   % millimolar (in calcium_dynamics)
Ca_o = 2.0;   % millimolar (in calcium_dynamics)
K_buf_c = 0.001;   % millimolar (in calcium_dynamics)
K_buf_sr = 0.3;   % millimolar (in calcium_dynamics)
K_up = 0.00025;   % millimolar (in calcium_dynamics)
V_leak = 8.0e-5;   % per_millisecond (in calcium_dynamics)
V_sr = 0.001094;   % micrometre3 (in calcium_dynamics)
Vmax_up = 0.000425;   % millimolar_per_millisecond (in calcium_dynamics)
a_rel = 0.016464;   % millimolar_per_millisecond (in calcium_dynamics)
b_rel = 0.25;   % millimolar (in calcium_dynamics)
c_rel = 0.008232;   % millimolar_per_millisecond (in calcium_dynamics)
tau_g = 2.0;   % millisecond (in calcium_dynamics)
K_pCa = 0.0005;   % millimolar (in calcium_pump_current)
g_pCa = 0.825;   % picoA_per_picoF (in calcium_pump_current)
g_Na = 14.838;   % nanoS_per_picoF (in fast_sodium_current)
g_K1 = 5.405;   % nanoS_per_picoF (in inward_rectifier_potassium_current)
Cm = 0.185;   % microF (in membrane)
F = 96485.3415;   % coulomb_per_millimole (in membrane)
R = 8314.472;   % joule_per_mole_kelvin (in membrane)
T = 310.0;   % kelvin (in membrane)
V_c = 0.016404;   % micrometre3 (in membrane)
stim_amplitude = 52.0;   % picoA_per_picoF (in membrane)
stim_duration = 1.0;   % millisecond (in membrane)
stim_start = 0.0;   % millisecond (in membrane)
K_o = 5.4;   % millimolar (in potassium_dynamics)
g_pK = 0.0146;   % nanoS_per_picoF (in potassium_pump_current)
g_Kr = 0.096;   % nanoS_per_picoF (in rapid_time_dependent_potassium_current)
P_kna = 0.03;   % dimensionless (in reversal_potentials)
g_Ks = 0.245;   % nanoS_per_picoF (in slow_time_dependent_potassium_current)
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
P_NaK = 1.362;   % picoA_per_picoF (in sodium_potassium_pump_current)
g_to = 0.294;   % nanoS_per_picoF (in transient_outward_current)

reasign(Constants, Values)

%-------------------------------------------------------------------------------
% Computed variables
%-------------------------------------------------------------------------------

% alpha_d (dimensionless) (in L_type_Ca_current_d_gate)
% beta_d (dimensionless) (in L_type_Ca_current_d_gate)
% d_inf (dimensionless) (in L_type_Ca_current_d_gate)
% gamma_d (millisecond) (in L_type_Ca_current_d_gate)
% tau_d (millisecond) (in L_type_Ca_current_d_gate)
% alpha_fCa (dimensionless) (in L_type_Ca_current_fCa_gate)
% beta_fCa (dimensionless) (in L_type_Ca_current_fCa_gate)
% d_fCa (per_millisecond) (in L_type_Ca_current_fCa_gate)
% fCa_inf (dimensionless) (in L_type_Ca_current_fCa_gate)
% gama_fCa (dimensionless) (in L_type_Ca_current_fCa_gate)
% tau_fCa (millisecond) (in L_type_Ca_current_fCa_gate)
% f_inf (dimensionless) (in L_type_Ca_current_f_gate)
% tau_f (millisecond) (in L_type_Ca_current_f_gate)
% i_CaL (picoA_per_picoF) (in L_type_Ca_current)
% i_b_Ca (picoA_per_picoF) (in calcium_background_current)
% Ca_i_bufc (dimensionless) (in calcium_dynamics)
% Ca_sr_bufsr (dimensionless) (in calcium_dynamics)
% d_g (per_millisecond) (in calcium_dynamics)
% g_inf (dimensionless) (in calcium_dynamics)
% i_leak (millimolar_per_millisecond) (in calcium_dynamics)
% i_rel (millimolar_per_millisecond) (in calcium_dynamics)
% i_up (millimolar_per_millisecond) (in calcium_dynamics)
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
% alpha_K1 (per_millisecond) (in inward_rectifier_potassium_current)
% beta_K1 (per_millisecond) (in inward_rectifier_potassium_current)
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

i_CaL = g_CaL*Y(1)*Y(3)*Y(2)*4.0*Y(10)*F^2.0/(R*T)*(Y(5)*exp(2.0*Y(10)*F/(R*T))-0.341*Ca_o)/(exp(2.0*Y(10)*F/(R*T))-1.0);
d_inf = 1.0/(1.0+exp((-5.0-Y(10))/7.5));
alpha_d = 1.4/(1.0+exp((-35.0-Y(10))/13.0))+0.25;
beta_d = 1.4/(1.0+exp((Y(10)+5.0)/5.0));
gamma_d = 1.0/(1.0+exp((50.0-Y(10))/20.0));
tau_d = 1.0*alpha_d*beta_d+gamma_d;
dY(1, 1) = (d_inf-Y(1))/tau_d;
alpha_fCa = 1.0/(1.0+(Y(5)/0.000325)^8.0);
beta_fCa = 0.1/(1.0+exp((Y(5)-0.0005)/0.0001));
gama_fCa = 0.2/(1.0+exp((Y(5)-0.00075)/0.0008));
fCa_inf = (alpha_fCa+beta_fCa+gama_fCa+0.23)/1.46;
tau_fCa = 2.0;
d_fCa = (fCa_inf-Y(2))/tau_fCa;

if ((fCa_inf > Y(2)) && (Y(10) > -60.0))
   dY(2, 1) = 0.0;
else
   dY(2, 1) = d_fCa;
end;

f_inf = 1.0/(1.0+exp((Y(10)+20.0)/7.0));
tau_f = 1125.0*exp(-(Y(10)+27.0)^2.0/240.0)+80.0+165.0/(1.0+exp((25.0-Y(10))/10.0));
dY(3, 1) = (f_inf-Y(3))/tau_f;
E_Ca = 0.5*R*T/F*log(Ca_o/Y(5));
i_b_Ca = g_bca*(Y(10)-E_Ca);
i_rel = (a_rel*Y(4)^2.0/(b_rel^2.0+Y(4)^2.0)+c_rel)*Y(1)*Y(6);
i_up = Vmax_up/(1.0+K_up^2.0/Y(5)^2.0);
i_leak = V_leak*(Y(4)-Y(5));

if (Y(5) < 0.00035)
   g_inf = 1.0/(1.0+(Y(5)/0.00035)^6.0);
else
   g_inf = 1.0/(1.0+(Y(5)/0.00035)^16.0);
end;

d_g = (g_inf-Y(6))/tau_g;

if ((g_inf > Y(6)) && (Y(10) > -60.0))
   dY(6, 1) = 0.0;
else
   dY(6, 1) = d_g;
end;

Ca_i_bufc = 1.0/(1.0+Buf_c*K_buf_c/(Y(5)+K_buf_c)^2.0);
Ca_sr_bufsr = 1.0/(1.0+Buf_sr*K_buf_sr/(Y(4)+K_buf_sr)^2.0);
i_p_Ca = g_pCa*Y(5)/(Y(5)+K_pCa);
i_NaCa = K_NaCa*(exp(gamma*Y(10)*F/(R*T))*Y(15)^3.0*Ca_o-exp((gamma-1.0)*Y(10)*F/(R*T))*Na_o^3.0*Y(5)*alpha)/((Km_Nai^3.0+Na_o^3.0)*(Km_Ca+Ca_o)*(1.0+K_sat*exp((gamma-1.0)*Y(10)*F/(R*T))));
dY(5, 1) = Ca_i_bufc*(i_leak-i_up+i_rel-1.0*(i_CaL+i_b_Ca+i_p_Ca-2.0*i_NaCa)/(2.0*1.0*V_c*F)*Cm);
dY(4, 1) = Ca_sr_bufsr*V_c/V_sr*(i_up-(i_rel+i_leak));
E_Na = R*T/F*log(Na_o/Y(15));
i_Na = g_Na*Y(9)^3.0*Y(7)*Y(8)*(Y(10)-E_Na);
h_inf = 1.0/(1.0+exp((Y(10)+71.55)/7.43))^2.0;

if (Y(10) < -40.0)
   alpha_h = 0.057*exp(-(Y(10)+80.0)/6.8);
else
   alpha_h = 0.0;
end;

if (Y(10) < -40.0)
   beta_h = 2.7*exp(0.079*Y(10))+310000.0*exp(0.3485*Y(10));
else
   beta_h = 0.77/(0.13*(1.0+exp((Y(10)+10.66)/-11.1)));
end;

tau_h = 1.0/(alpha_h+beta_h);
dY(7, 1) = (h_inf-Y(7))/tau_h;
j_inf = 1.0/(1.0+exp((Y(10)+71.55)/7.43))^2.0;

if (Y(10) < -40.0)
   alpha_j = (-25428.0*exp(0.2444*Y(10))-6.948e-6*exp(-0.04391*Y(10)))*(Y(10)+37.78)/1.0/(1.0+exp(0.311*(Y(10)+79.23)));
else
   alpha_j = 0.0;
end;

if (Y(10) < -40.0)
   beta_j = 0.02424*exp(-0.01052*Y(10))/(1.0+exp(-0.1378*(Y(10)+40.14)));
else
   beta_j = 0.6*exp(0.057*Y(10))/(1.0+exp(-0.1*(Y(10)+32.0)));
end;

tau_j = 1.0/(alpha_j+beta_j);
dY(8, 1) = (j_inf-Y(8))/tau_j;
m_inf = 1.0/(1.0+exp((-56.86-Y(10))/9.03))^2.0;
alpha_m = 1.0/(1.0+exp((-60.0-Y(10))/5.0));
beta_m = 0.1/(1.0+exp((Y(10)+35.0)/5.0))+0.1/(1.0+exp((Y(10)-50.0)/200.0));
tau_m = 1.0*alpha_m*beta_m;
dY(9, 1) = (m_inf-Y(9))/tau_m;
E_K = R*T/F*log(K_o/Y(11));
alpha_K1 = 0.1/(1.0+exp(0.06*(Y(10)-E_K-200.0)));
beta_K1 = (3.0*exp(0.0002*(Y(10)-E_K+100.0))+1.0*exp(0.1*(Y(10)-E_K-10.0)))/(1.0+exp(-0.5*(Y(10)-E_K)));
xK1_inf = alpha_K1/(alpha_K1+beta_K1);
i_K1 = g_K1*xK1_inf*sqrt(K_o/5.4)*(Y(10)-E_K);

if ((time >= stim_start) && (time <= stim_start+stim_duration))
   i_Stim = -stim_amplitude;
else
   i_Stim = 0.0;
end;

i_to = g_to*Y(16)*Y(17)*(Y(10)-E_K);
i_Kr = g_Kr*sqrt(K_o/5.4)*Y(12)*Y(13)*(Y(10)-E_K);
E_Ks = R*T/F*log((K_o+P_kna*Na_o)/(Y(11)+P_kna*Y(15)));
i_Ks = g_Ks*Y(14)^2.0*(Y(10)-E_Ks);
i_NaK = P_NaK*K_o/(K_o+K_mk)*Y(15)/(Y(15)+K_mNa)/(1.0+0.1245*exp(-0.1*Y(10)*F/(R*T))+0.0353*exp(-Y(10)*F/(R*T)));
i_b_Na = g_bna*(Y(10)-E_Na);
i_p_K = g_pK*(Y(10)-E_K)/(1.0+exp((25.0-Y(10))/5.98));
dY(10, 1) = -(i_K1+i_to+i_Kr+i_Ks+i_CaL+i_NaK+i_Na+i_b_Na+i_NaCa+i_b_Ca+i_p_K+i_p_Ca+i_Stim);
dY(11, 1) = -1.0*(i_K1+i_to+i_Kr+i_Ks+i_p_K+i_Stim-2.0*i_NaK)*Cm/(1.0*V_c*F);
xr1_inf = 1.0/(1.0+exp((-26.0-Y(10))/7.0));
alpha_xr1 = 450.0/(1.0+exp((-45.0-Y(10))/10.0));
beta_xr1 = 6.0/(1.0+exp((Y(10)+30.0)/11.5));
tau_xr1 = 1.0*alpha_xr1*beta_xr1;
dY(12, 1) = (xr1_inf-Y(12))/tau_xr1;
xr2_inf = 1.0/(1.0+exp((Y(10)+88.0)/24.0));
alpha_xr2 = 3.0/(1.0+exp((-60.0-Y(10))/20.0));
beta_xr2 = 1.12/(1.0+exp((Y(10)-60.0)/20.0));
tau_xr2 = 1.0*alpha_xr2*beta_xr2;
dY(13, 1) = (xr2_inf-Y(13))/tau_xr2;
xs_inf = 1.0/(1.0+exp((-5.0-Y(10))/14.0));
alpha_xs = 1100.0/sqrt(1.0+exp((-10.0-Y(10))/6.0));
beta_xs = 1.0/(1.0+exp((Y(10)-60.0)/20.0));
tau_xs = 1.0*alpha_xs*beta_xs;
dY(14, 1) = (xs_inf-Y(14))/tau_xs;
dY(15, 1) = -1.0*(i_Na+i_b_Na+3.0*i_NaK+3.0*i_NaCa)*Cm/(1.0*V_c*F);
r_inf = 1.0/(1.0+exp((20.0-Y(10))/6.0));
tau_r = 9.5*exp(-(Y(10)+40.0)^2.0/1800.0)+0.8;
dY(16, 1) = (r_inf-Y(16))/tau_r;
s_inf = 1.0/(1.0+exp((Y(10)+20.0)/5.0));
tau_s = 85.0*exp(-(Y(10)+45.0)^2.0/320.0)+5.0/(1.0+exp((Y(10)-20.0)/5.0))+3.0;
dY(17, 1) = (s_inf-Y(17))/tau_s;

CompVar = [alpha_d beta_d d_inf gamma_d tau_d alpha_fCa beta_fCa d_fCa fCa_inf gama_fCa tau_fCa f_inf tau_f i_CaL i_b_Ca Ca_i_bufc Ca_sr_bufsr d_g g_inf i_leak i_rel i_up i_p_Ca alpha_h beta_h h_inf tau_h alpha_j beta_j j_inf tau_j alpha_m beta_m m_inf tau_m i_Na alpha_K1 beta_K1 i_K1 xK1_inf i_Stim i_p_K alpha_xr1 beta_xr1 tau_xr1 xr1_inf alpha_xr2 beta_xr2 tau_xr2 xr2_inf i_Kr E_Ca E_K E_Ks E_Na alpha_xs beta_xs tau_xs xs_inf i_Ks i_b_Na i_NaCa i_NaK r_inf tau_r s_inf tau_s i_to ];

%===============================================================================
% End of file
%===============================================================================
