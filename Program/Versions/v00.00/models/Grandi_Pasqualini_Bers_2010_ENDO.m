%===============================================================================
% CellML file:   C:\Users\alu.00000\Dropbox\UniZar DropBox\Doctorado\CellML\grandi_pasqualini_bers_2010.cellml
% CellML model:  grandi_pasqualini_bers_2010
% Date and time: 26/06/2013 at 11:48:11
%-------------------------------------------------------------------------------
% Conversion from CellML 1.0 to MATLAB (init) was done using COR (0.9.31.1409)
%    Copyright 2002-2013 Dr Alan Garny
%    http://cor.physiol.ox.ac.uk/ - cor@physiol.ox.ac.uk
%-------------------------------------------------------------------------------
% http://www.cellml.org/
%===============================================================================

function [dY, CompVar] = Grandi_Pasqualini_Bers_2010_ENDO(time, Y, Constants, Values)

%-------------------------------------------------------------------------------
% Initial conditions
%-------------------------------------------------------------------------------

% Y = [8.72509677797499e-5, 0.000175882395147342, 0.000106779509977354, 0.000295573424135051, 0.00192322252438022, 0.137560495022823, 0.00217360235649355, 0.117412025936615, 0.0106160166692932, 0.00893455096919132, 2.92407183949469e-6, 0.995135796703515, 0.0246760872105795, 0.0152723084239416, 0.0210022533039071, 0.00428016666258923, 0.626221949492493, 0.624553572490432, 0.003793087414436, 0.000440438103758954, 0.000440445885642567, 0.999995844038706, 0.785115828275182, 0.0735890020284214, 0.114583623436917, 0.00740524521680039, 0.00990339304377132, 120.0, 3.4543773303328, 0.753740951477775, 8.40513364344858, 8.40537012592918, 8.40491910001025, 0.554760499828172, 1.19723145924432, 9.07666168960848e-8, 7.40481128853622e-7, 0.890806040818203, -81.4552030512661];

% YNames = {'Ca_i', 'Ca_j', 'Ca_sl', 'CaM', 'Myo_c', 'Myo_m', 'SRB', 'Tn_CHc', 'Tn_CHm', 'Tn_CL', 'd', 'f', 'f_Ca_Bj', 'f_Ca_Bsl', 'x_kr', 'x_ks', 'h', 'j', 'm', 'x_to_f', 'x_to_s', 'y_to_f', 'y_to_s', 'SLH_j', 'SLH_sl', 'SLL_j', 'SLL_sl', 'K_i', 'Na_Bj', 'Na_Bsl', 'Na_i', 'Na_j', 'Na_sl', 'Ca_sr', 'Csqn_b', 'Ry_Ri', 'Ry_Ro', 'Ry_Rr', 'V_m'};
% YUnits = {'mM', 'mM', 'mM', 'mM', 'mM', 'mM', 'mM', 'mM', 'mM', 'mM', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'mM', 'mM', 'mM', 'mM', 'mM', 'mM', 'mM', 'mM', 'mM', 'mM', 'mM', 'mM', 'mM', 'mM', 'mM', 'mV'};
% YComponents = {'Ca_Concentrations', 'Ca_Concentrations', 'Ca_Concentrations', 'Cytosolic_Ca_Buffers', 'Cytosolic_Ca_Buffers', 'Cytosolic_Ca_Buffers', 'Cytosolic_Ca_Buffers', 'Cytosolic_Ca_Buffers', 'Cytosolic_Ca_Buffers', 'Cytosolic_Ca_Buffers', 'I_Ca', 'I_Ca', 'I_Ca', 'I_Ca', 'I_Kr', 'I_Ks', 'I_Na', 'I_Na', 'I_Na', 'I_to', 'I_to', 'I_to', 'I_to', 'Junctional_and_SL_Ca_Buffers', 'Junctional_and_SL_Ca_Buffers', 'Junctional_and_SL_Ca_Buffers', 'Junctional_and_SL_Ca_Buffers', 'K_Concentration', 'Na_Buffers', 'Na_Buffers', 'Na_Concentrations', 'Na_Concentrations', 'Na_Concentrations', 'SR_Ca_Concentrations', 'SR_Ca_Concentrations', 'SR_Fluxes', 'SR_Fluxes', 'SR_Fluxes', 'membrane_potential'};

%-------------------------------------------------------------------------------
% State variables
%-------------------------------------------------------------------------------

% 1: Ca_i (mM) (in Ca_Concentrations)
% 2: Ca_j (mM) (in Ca_Concentrations)
% 3: Ca_sl (mM) (in Ca_Concentrations)
% 4: CaM (mM) (in Cytosolic_Ca_Buffers)
% 5: Myo_c (mM) (in Cytosolic_Ca_Buffers)
% 6: Myo_m (mM) (in Cytosolic_Ca_Buffers)
% 7: SRB (mM) (in Cytosolic_Ca_Buffers)
% 8: Tn_CHc (mM) (in Cytosolic_Ca_Buffers)
% 9: Tn_CHm (mM) (in Cytosolic_Ca_Buffers)
% 10: Tn_CL (mM) (in Cytosolic_Ca_Buffers)
% 11: d (dimensionless) (in I_Ca)
% 12: f (dimensionless) (in I_Ca)
% 13: f_Ca_Bj (dimensionless) (in I_Ca)
% 14: f_Ca_Bsl (dimensionless) (in I_Ca)
% 15: x_kr (dimensionless) (in I_Kr)
% 16: x_ks (dimensionless) (in I_Ks)
% 17: h (dimensionless) (in I_Na)
% 18: j (dimensionless) (in I_Na)
% 19: m (dimensionless) (in I_Na)
% 20: x_to_f (dimensionless) (in I_to)
% 21: x_to_s (dimensionless) (in I_to)
% 22: y_to_f (dimensionless) (in I_to)
% 23: y_to_s (dimensionless) (in I_to)
% 24: SLH_j (mM) (in Junctional_and_SL_Ca_Buffers)
% 25: SLH_sl (mM) (in Junctional_and_SL_Ca_Buffers)
% 26: SLL_j (mM) (in Junctional_and_SL_Ca_Buffers)
% 27: SLL_sl (mM) (in Junctional_and_SL_Ca_Buffers)
% 28: K_i (mM) (in K_Concentration)
% 29: Na_Bj (mM) (in Na_Buffers)
% 30: Na_Bsl (mM) (in Na_Buffers)
% 31: Na_i (mM) (in Na_Concentrations)
% 32: Na_j (mM) (in Na_Concentrations)
% 33: Na_sl (mM) (in Na_Concentrations)
% 34: Ca_sr (mM) (in SR_Ca_Concentrations)
% 35: Csqn_b (mM) (in SR_Ca_Concentrations)
% 36: Ry_Ri (mM) (in SR_Fluxes)
% 37: Ry_Ro (mM) (in SR_Fluxes)
% 38: Ry_Rr (mM) (in SR_Fluxes)
% 39: V_m (mV) (in membrane_potential)

%-------------------------------------------------------------------------------
% Constants
%-------------------------------------------------------------------------------

stim_amplitude = 38.2;   % uA_per_uF (in membrane_potential)
stim_duration = 1.0;   % msec (in membrane_potential)
stim_start = 0.0;   % msec (in membrane_potential)

Reasign(Constants, Values)

%-------------------------------------------------------------------------------
% Computed variables
%-------------------------------------------------------------------------------

% I_Ca_tot_junc (uA_per_uF) (in Ca_Concentrations)
% I_Ca_tot_sl (uA_per_uF) (in Ca_Concentrations)
% J_CaB_cytosol (mM_per_msec) (in Cytosolic_Ca_Buffers)
% I_cabk (uA_per_uF) (in I_CaBK)
% I_cabk_junc (uA_per_uF) (in I_CaBK)
% I_cabk_sl (uA_per_uF) (in I_CaBK)
% I_Ca (uA_per_uF) (in I_Ca)
% I_CaK (uA_per_uF) (in I_Ca)
% I_CaNa (uA_per_uF) (in I_Ca)
% I_CaNa_junc (uA_per_uF) (in I_Ca)
% I_CaNa_sl (uA_per_uF) (in I_Ca)
% I_Ca_junc (uA_per_uF) (in I_Ca)
% I_Ca_sl (uA_per_uF) (in I_Ca)
% I_Catot (uA_per_uF) (in I_Ca)
% dss (dimensionless) (in I_Ca)
% fcaCaMSL (dimensionless) (in I_Ca)
% fcaCaj (dimensionless) (in I_Ca)
% fss (dimensionless) (in I_Ca)
% ibarca_j (uA_per_uF) (in I_Ca)
% ibarca_sl (uA_per_uF) (in I_Ca)
% ibark (uA_per_uF) (in I_Ca)
% ibarna_j (uA_per_uF) (in I_Ca)
% ibarna_sl (uA_per_uF) (in I_Ca)
% taud (msec) (in I_Ca)
% tauf (msec) (in I_Ca)
% I_ClCa (uA_per_uF) (in I_ClCa)
% I_ClCa_junc (uA_per_uF) (in I_ClCa)
% I_ClCa_sl (uA_per_uF) (in I_ClCa)
% I_Clbk (uA_per_uF) (in I_ClCa)
% I_ki (uA_per_uF) (in I_Ki)
% aki (dimensionless) (in I_Ki)
% bki (dimensionless) (in I_Ki)
% kiss (dimensionless) (in I_Ki)
% I_kp (uA_per_uF) (in I_Kp)
% I_kp_junc (uA_per_uF) (in I_Kp)
% I_kp_sl (uA_per_uF) (in I_Kp)
% kp_kp (dimensionless) (in I_Kp)
% I_kr (uA_per_uF) (in I_Kr)
% gkr (mS_per_uF) (in I_Kr)
% rkr (dimensionless) (in I_Kr)
% tauxr (msec) (in I_Kr)
% xrss (dimensionless) (in I_Kr)
% I_ks (uA_per_uF) (in I_Ks)
% I_ks_junc (uA_per_uF) (in I_Ks)
% I_ks_sl (uA_per_uF) (in I_Ks)
% eks (mV) (in I_Ks)
% gks_junc (mS_per_uF) (in I_Ks)
% gks_sl (mS_per_uF) (in I_Ks)
% tauxs (msec) (in I_Ks)
% xsss (dimensionless) (in I_Ks)
% I_ncx (uA_per_uF) (in I_NCX)
% I_ncx_junc (uA_per_uF) (in I_NCX)
% I_ncx_sl (uA_per_uF) (in I_NCX)
% Ka_junc (dimensionless) (in I_NCX)
% Ka_sl (dimensionless) (in I_NCX)
% s1_junc (mM4) (in I_NCX)
% s1_sl (mM4) (in I_NCX)
% s2_junc (mM4) (in I_NCX)
% s2_sl (mM4) (in I_NCX)
% s3_junc (mM4) (in I_NCX)
% s3_sl (mM4) (in I_NCX)
% I_nabk (uA_per_uF) (in I_NaBK)
% I_nabk_junc (uA_per_uF) (in I_NaBK)
% I_nabk_sl (uA_per_uF) (in I_NaBK)
% I_nak (uA_per_uF) (in I_NaK)
% I_nak_junc (uA_per_uF) (in I_NaK)
% I_nak_sl (uA_per_uF) (in I_NaK)
% fnak (dimensionless) (in I_NaK)
% sigma (dimensionless) (in I_NaK)
% I_Na (uA_per_uF) (in I_Na)
% I_Na_junc (uA_per_uF) (in I_Na)
% I_Na_sl (uA_per_uF) (in I_Na)
% ah (dimensionless) (in I_Na)
% aj (dimensionless) (in I_Na)
% bh (dimensionless) (in I_Na)
% bj (dimensionless) (in I_Na)
% hss (dimensionless) (in I_Na)
% jss (dimensionless) (in I_Na)
% mss (dimensionless) (in I_Na)
% tauh (msec) (in I_Na)
% tauj (msec) (in I_Na)
% taum (msec) (in I_Na)
% I_pca (uA_per_uF) (in I_PCa)
% I_pca_junc (uA_per_uF) (in I_PCa)
% I_pca_sl (uA_per_uF) (in I_PCa)
% GtoFast (mS_per_uF) (in I_to)
% GtoSlow (mS_per_uF) (in I_to)
% I_to (uA_per_uF) (in I_to)
% I_tof (uA_per_uF) (in I_to)
% I_tos (uA_per_uF) (in I_to)
% tauxtof (msec) (in I_to)
% tauxtos (msec) (in I_to)
% tauytof (msec) (in I_to)
% tauytos (msec) (in I_to)
% xtoss (dimensionless) (in I_to)
% ytoss (dimensionless) (in I_to)
% J_CaB_junction (mM_per_msec) (in Junctional_and_SL_Ca_Buffers)
% J_CaB_sl (mM_per_msec) (in Junctional_and_SL_Ca_Buffers)
% I_K_tot (uA_per_uF) (in K_Concentration)
% dNa_Bj_dt (mM_per_msec) (in Na_Buffers)
% dNa_Bsl_dt (mM_per_msec) (in Na_Buffers)
% I_Na_tot_junc (uA_per_uF) (in Na_Concentrations)
% I_Na_tot_junc2 (uA_per_uF) (in Na_Concentrations)
% I_Na_tot_sl (uA_per_uF) (in Na_Concentrations)
% I_Na_tot_sl2 (uA_per_uF) (in Na_Concentrations)
% J_SRCarel (mM_per_msec) (in SR_Fluxes)
% J_SRleak (mM_per_msec) (in SR_Fluxes)
% J_serca (mM_per_msec) (in SR_Fluxes)
% MaxSR (dimensionless) (in SR_Fluxes)
% MinSR (dimensionless) (in SR_Fluxes)
% RI (mM) (in SR_Fluxes)
% kCaSR (dimensionless) (in SR_Fluxes)
% kiSRCa (per_mM_per_msec) (in SR_Fluxes)
% koSRCa (per_mM2_per_msec) (in SR_Fluxes)
% I_Ca_tot (uA_per_uF) (in membrane_potential)
% I_Cl_tot (uA_per_uF) (in membrane_potential)
% I_Na_tot (uA_per_uF) (in membrane_potential)
% I_tot (uA_per_uF) (in membrane_potential)
% i_Stim (uA_per_uF) (in membrane_potential)
% Bmax_CaM (mM) (in parameters)
% Bmax_Csqn (mM) (in parameters)
% Bmax_Naj (mM) (in parameters)
% Bmax_Nasl (mM) (in parameters)
% Bmax_SLhighj (mM) (in parameters)
% Bmax_SLhighsl (mM) (in parameters)
% Bmax_SLlowj (mM) (in parameters)
% Bmax_SLlowsl (mM) (in parameters)
% Bmax_SR (mM) (in parameters)
% Bmax_TnChigh (mM) (in parameters)
% Bmax_TnClow (mM) (in parameters)
% Bmax_myosin (mM) (in parameters)
% Cao (mM) (in parameters)
% Cli (mM) (in parameters)
% Clo (mM) (in parameters)
% Cmem (farad) (in parameters)
% DcaJuncSL (cm2_per_sec) (in parameters)
% DcaSLcyto (cm2_per_sec) (in parameters)
% DnaJuncSL (cm2_per_sec) (in parameters)
% DnaSLcyto (cm2_per_sec) (in parameters)
% Fjunc (dimensionless) (in parameters)
% Fjunc_CaL (dimensionless) (in parameters)
% FoRT (per_mV) (in parameters)
% Frdy (coulomb_per_mole) (in parameters)
% Fsl (dimensionless) (in parameters)
% Fsl_CaL (dimensionless) (in parameters)
% GCaB (mS_per_uF) (in parameters)
% GClB (mS_per_uF) (in parameters)
% GClCa (mS_per_uF) (in parameters)
% GNa (mS_per_uF) (in parameters)
% GNaB (mS_per_uF) (in parameters)
% IbarNCX (uA_per_uF) (in parameters)
% IbarNaK (uA_per_uF) (in parameters)
% IbarSLCaP (uA_per_uF) (in parameters)
% J_ca_juncsl (liters_per_msec) (in parameters)
% J_ca_slmyo (liters_per_msec) (in parameters)
% J_na_juncsl (liters_per_msec) (in parameters)
% J_na_slmyo (liters_per_msec) (in parameters)
% KdClCa (mM) (in parameters)
% Kdact (mM) (in parameters)
% KmCai (mM) (in parameters)
% KmCao (mM) (in parameters)
% KmKo (mM) (in parameters)
% KmNai (mM) (in parameters)
% KmNaip (mM) (in parameters)
% KmNao (mM) (in parameters)
% KmPCa (mM) (in parameters)
% Kmf (mM) (in parameters)
% Kmr (mM) (in parameters)
% Ko (mM) (in parameters)
% Mgi (mM) (in parameters)
% Nao (mM) (in parameters)
% Q10CaL (dimensionless) (in parameters)
% Q10KmNai (dimensionless) (in parameters)
% Q10NCX (dimensionless) (in parameters)
% Q10NaK (dimensionless) (in parameters)
% Q10SLCaP (dimensionless) (in parameters)
% Q10SRCaP (dimensionless) (in parameters)
% Qpow (dimensionless) (in parameters)
% R (joule_per_kelvin_per_kilomole) (in parameters)
% SAjunc (um2) (in parameters)
% SAsl (um2) (in parameters)
% Temp (kelvin) (in parameters)
% Vcell (liter) (in parameters)
% Vjunc (liter) (in parameters)
% Vmax_SRCaP (mM_per_msec) (in parameters)
% Vmyo (liter) (in parameters)
% Vsl (liter) (in parameters)
% Vsr (liter) (in parameters)
% cellLength (um) (in parameters)
% cellRadius (um) (in parameters)
% distJuncSL (um) (in parameters)
% distSLcyto (um) (in parameters)
% ec50SR (mM) (in parameters)
% eca_junc (mV) (in parameters)
% eca_sl (mV) (in parameters)
% ecl (mV) (in parameters)
% ek (mV) (in parameters)
% ena_junc (mV) (in parameters)
% ena_sl (mV) (in parameters)
% epi (dimensionless) (in parameters)
% gkp (mS_per_uF) (in parameters)
% hillSRCaP (dimensionless) (in parameters)
% junctionLength (um) (in parameters)
% junctionRadius (um) (in parameters)
% kiCa (per_mM_per_msec) (in parameters)
% kim (per_msec) (in parameters)
% koCa (per_mM2_per_msec) (in parameters)
% koff_cam (per_msec) (in parameters)
% koff_csqn (per_msec) (in parameters)
% koff_myoca (per_msec) (in parameters)
% koff_myomg (per_msec) (in parameters)
% koff_na (per_msec) (in parameters)
% koff_slh (per_msec) (in parameters)
% koff_sll (per_msec) (in parameters)
% koff_sr (per_msec) (in parameters)
% koff_tnchca (per_msec) (in parameters)
% koff_tnchmg (per_msec) (in parameters)
% koff_tncl (per_msec) (in parameters)
% kom (per_msec) (in parameters)
% kon_cam (per_mM_per_msec) (in parameters)
% kon_csqn (per_mM_per_msec) (in parameters)
% kon_myoca (per_mM_per_msec) (in parameters)
% kon_myomg (per_mM_per_msec) (in parameters)
% kon_na (per_mM_per_msec) (in parameters)
% kon_slh (per_mM_per_msec) (in parameters)
% kon_sll (per_mM_per_msec) (in parameters)
% kon_sr (per_mM_per_msec) (in parameters)
% kon_tnchca (per_mM_per_msec) (in parameters)
% kon_tnchmg (per_mM_per_msec) (in parameters)
% kon_tncl (per_mM_per_msec) (in parameters)
% ks (per_msec) (in parameters)
% ksat (dimensionless) (in parameters)
% nu (dimensionless) (in parameters)
% pCa (cm_per_sec) (in parameters)
% pK (cm_per_sec) (in parameters)
% pNa (cm_per_sec) (in parameters)
% pNaK (dimensionless) (in parameters)

%-------------------------------------------------------------------------------
% Computation
%-------------------------------------------------------------------------------

% time (msec)

Fjunc_CaL = 0.9;
pCa = 0.5*5.4e-4;
Frdy = 96485.0;
R = 8314.0;
Temp = 310.0;
FoRT = Frdy/(R*Temp);
Cao = 1.8;
ibarca_j = pCa*4.0*Y(39)*Frdy*FoRT*(0.341*Y(2)*exp(2.0*Y(39)*FoRT)-0.341*Cao)/(exp(2.0*Y(39)*FoRT)-1.0);
fcaCaj = 0.0;
Q10CaL = 1.8;
Qpow = (Temp-310.0)/10.0;
I_Ca_junc = Fjunc_CaL*ibarca_j*Y(11)*Y(12)*(1.0-Y(13)+fcaCaj)*Q10CaL^Qpow*0.45*1.0;
Fjunc = 0.11;
GCaB = 5.513e-4;
eca_junc = 1.0/FoRT/2.0*log(Cao/Y(2));
I_cabk_junc = Fjunc*GCaB*(Y(39)-eca_junc);
Q10SLCaP = 2.35;
IbarSLCaP = 0.0673;
KmPCa = 0.5e-3;
I_pca_junc = Fjunc*Q10SLCaP^Qpow*IbarSLCaP*Y(2)^1.6/(KmPCa^1.6+Y(2)^1.6);
IbarNCX = 1.0*4.5;
Q10NCX = 1.57;
Kdact = 0.15e-3;
Ka_junc = 1.0/(1.0+(Kdact/Y(2))^2.0);
nu = 0.27;
s1_junc = exp(nu*Y(39)*FoRT)*Y(32)^3.0*Cao;
Nao = 140.0;
s2_junc = exp((nu-1.0)*Y(39)*FoRT)*Nao^3.0*Y(2);
KmCai = 3.59e-3;
KmNai = 12.29;
KmNao = 87.5;
KmCao = 1.3;
s3_junc = KmCai*Nao^3.0*(1.0+(Y(32)/KmNai)^3.0)+KmNao^3.0*Y(2)*(1.0+Y(2)/KmCai)+KmCao*Y(32)^3.0+Y(32)^3.0*Cao+Nao^3.0*Y(2);
ksat = 0.32;
I_ncx_junc = Fjunc*IbarNCX*Q10NCX^Qpow*Ka_junc*(s1_junc-s2_junc)/s3_junc/(1.0+ksat*exp((nu-1.0)*Y(39)*FoRT));
I_Ca_tot_junc = I_Ca_junc+I_cabk_junc+I_pca_junc-2.0*I_ncx_junc;
Fsl_CaL = 1.0-Fjunc_CaL;
ibarca_sl = pCa*4.0*Y(39)*Frdy*FoRT*(0.341*Y(3)*exp(2.0*Y(39)*FoRT)-0.341*Cao)/(exp(2.0*Y(39)*FoRT)-1.0);
fcaCaMSL = 0.0;
I_Ca_sl = Fsl_CaL*ibarca_sl*Y(11)*Y(12)*(1.0-Y(14)+fcaCaMSL)*Q10CaL^Qpow*0.45*1.0;
Fsl = 1.0-Fjunc;
eca_sl = 1.0/FoRT/2.0*log(Cao/Y(3));
I_cabk_sl = Fsl*GCaB*(Y(39)-eca_sl);
I_pca_sl = Fsl*Q10SLCaP^Qpow*IbarSLCaP*Y(3)^1.6/(KmPCa^1.6+Y(3)^1.6);
Ka_sl = 1.0/(1.0+(Kdact/Y(3))^2.0);
s1_sl = exp(nu*Y(39)*FoRT)*Y(33)^3.0*Cao;
s2_sl = exp((nu-1.0)*Y(39)*FoRT)*Nao^3.0*Y(3);
s3_sl = KmCai*Nao^3.0*(1.0+(Y(33)/KmNai)^3.0)+KmNao^3.0*Y(3)*(1.0+Y(3)/KmCai)+KmCao*Y(33)^3.0+Y(33)^3.0*Cao+Nao^3.0*Y(3);
I_ncx_sl = Fsl*IbarNCX*Q10NCX^Qpow*Ka_sl*(s1_sl-s2_sl)/s3_sl/(1.0+ksat*exp((nu-1.0)*Y(39)*FoRT));
I_Ca_tot_sl = I_Ca_sl+I_cabk_sl+I_pca_sl-2.0*I_ncx_sl;
Cmem = 1.381e-10;
cellRadius = 10.25;
cellLength = 100.0;
Vcell = pi*cellRadius^2.0*cellLength*1.0e-15;
Vjunc = 0.0539*0.01*Vcell;
J_ca_juncsl = 8.2413e-13;
kon_sll = 100.0;
Vmyo = 0.65*Vcell;
Bmax_SLlowj = 4.6e-3*Vmyo/Vjunc*0.1;
koff_sll = 1300.0e-3;
kon_slh = 100.0;
Bmax_SLhighj = 1.65e-3*Vmyo/Vjunc*0.1;
koff_slh = 30.0e-3;
J_CaB_junction = kon_sll*Y(2)*(Bmax_SLlowj-Y(26))-koff_sll*Y(26)+(kon_slh*Y(2)*(Bmax_SLhighj-Y(24))-koff_slh*Y(24));
ks = 25.0;
J_SRCarel = ks*Y(37)/1.0*(Y(34)-Y(2));
Vsr = 0.035*Vcell;
J_SRleak = 5.348e-6*(Y(34)-Y(2));
dY(2, 1) = -I_Ca_tot_junc*Cmem/(Vjunc*2.0*Frdy)+J_ca_juncsl/Vjunc*(Y(3)-Y(2))-J_CaB_junction+J_SRCarel*Vsr/Vjunc+J_SRleak*Vmyo/Vjunc;
Vsl = 0.02*Vcell;
J_ca_slmyo = 3.2743e-12;
Bmax_SLlowsl = 37.4e-3*Vmyo/Vsl;
Bmax_SLhighsl = 13.4e-3*Vmyo/Vsl;
J_CaB_sl = kon_sll*Y(3)*(Bmax_SLlowsl-Y(27))-koff_sll*Y(27)+(kon_slh*Y(3)*(Bmax_SLhighsl-Y(25))-koff_slh*Y(25));
dY(3, 1) = -I_Ca_tot_sl*Cmem/(Vsl*2.0*Frdy)+J_ca_juncsl/Vsl*(Y(2)-Y(3))+J_ca_slmyo/Vsl*(Y(1)-Y(3))-J_CaB_sl;
Q10SRCaP = 2.6;
Vmax_SRCaP = 5.3114e-3;
Kmf = 0.246e-3;
hillSRCaP = 1.787;
Kmr = 1.7;
J_serca = Q10SRCaP^Qpow*Vmax_SRCaP*((Y(1)/Kmf)^hillSRCaP-(Y(34)/Kmr)^hillSRCaP)/(1.0+(Y(1)/Kmf)^hillSRCaP+(Y(34)/Kmr)^hillSRCaP);
kon_tncl = 32.7;
Bmax_TnClow = 70.0e-3;
koff_tncl = 19.6e-3;
kon_tnchca = 2.37;
Bmax_TnChigh = 140.0e-3;
koff_tnchca = 0.032e-3;
kon_tnchmg = 3.0e-3;
Mgi = 1.0;
koff_tnchmg = 3.33e-3;
kon_cam = 34.0;
Bmax_CaM = 24.0e-3;
koff_cam = 238.0e-3;
kon_myoca = 13.8;
Bmax_myosin = 140.0e-3;
koff_myoca = 0.46e-3;
kon_myomg = 0.0157;
koff_myomg = 0.057e-3;
kon_sr = 100.0;
Bmax_SR = 19.0*0.9e-3;
koff_sr = 60.0e-3;
J_CaB_cytosol = kon_tncl*Y(1)*(Bmax_TnClow-Y(10))-koff_tncl*Y(10)+kon_tnchca*Y(1)*(Bmax_TnChigh-Y(8)-Y(9))-koff_tnchca*Y(8)+kon_tnchmg*Mgi*(Bmax_TnChigh-Y(8)-Y(9))-koff_tnchmg*Y(9)+kon_cam*Y(1)*(Bmax_CaM-Y(4))-koff_cam*Y(4)+kon_myoca*Y(1)*(Bmax_myosin-Y(5)-Y(6))-koff_myoca*Y(5)+kon_myomg*Mgi*(Bmax_myosin-Y(5)-Y(6))-koff_myomg*Y(6)+(kon_sr*Y(1)*(Bmax_SR-Y(7))-koff_sr*Y(7));
dY(1, 1) = -J_serca*Vsr/Vmyo-J_CaB_cytosol+J_ca_slmyo/Vmyo*(Y(3)-Y(1));
dY(10, 1) = kon_tncl*Y(1)*(Bmax_TnClow-Y(10))-koff_tncl*Y(10);
dY(8, 1) = kon_tnchca*Y(1)*(Bmax_TnChigh-Y(8)-Y(9))-koff_tnchca*Y(8);
dY(9, 1) = kon_tnchmg*Mgi*(Bmax_TnChigh-Y(8)-Y(9))-koff_tnchmg*Y(9);
dY(4, 1) = kon_cam*Y(1)*(Bmax_CaM-Y(4))-koff_cam*Y(4);
dY(5, 1) = kon_myoca*Y(1)*(Bmax_myosin-Y(5)-Y(6))-koff_myoca*Y(5);
dY(6, 1) = kon_myomg*Mgi*(Bmax_myosin-Y(5)-Y(6))-koff_myomg*Y(6);
dY(7, 1) = kon_sr*Y(1)*(Bmax_SR-Y(7))-koff_sr*Y(7);
fss = 1.0/(1.0+exp((Y(39)+35.0)/9.0))+0.6/(1.0+exp((50.0-Y(39))/20.0));
dss = 1.0/(1.0+exp(-(Y(39)+5.0)/6.0));
taud = 1.0*dss*(1.0-exp(-(Y(39)+5.0)/6.0))/(0.035*(Y(39)+5.0));
tauf = 1.0/(0.0197*exp(-(0.0337*(Y(39)+14.5))^2.0)+0.02);
dY(11, 1) = (dss-Y(11))/taud;
dY(12, 1) = (fss-Y(12))/tauf;
dY(13, 1) = 1.7*Y(2)/1.0*(1.0-Y(13))-11.9e-3*Y(13);
dY(14, 1) = 1.7*Y(3)/1.0*(1.0-Y(14))-11.9e-3*Y(14);
pK = 0.5*2.7e-7;
Ko = 5.4;
ibark = pK*Y(39)*Frdy*FoRT*(0.75*Y(28)*exp(Y(39)*FoRT)-0.75*Ko)/(exp(Y(39)*FoRT)-1.0);
pNa = 0.5*1.5e-8;
ibarna_j = pNa*Y(39)*Frdy*FoRT*(0.75*Y(32)*exp(Y(39)*FoRT)-0.75*Nao)/(exp(Y(39)*FoRT)-1.0);
ibarna_sl = pNa*Y(39)*Frdy*FoRT*(0.75*Y(33)*exp(Y(39)*FoRT)-0.75*Nao)/(exp(Y(39)*FoRT)-1.0);
I_Ca = I_Ca_junc+I_Ca_sl;
I_CaK = ibark*Y(11)*Y(12)*(Fjunc_CaL*(fcaCaj+(1.0-Y(13)))+Fsl_CaL*(fcaCaMSL+(1.0-Y(14))))*Q10CaL^Qpow*0.45*1.0;
I_CaNa_junc = Fjunc_CaL*ibarna_j*Y(11)*Y(12)*(1.0-Y(13)+fcaCaj)*Q10CaL^Qpow*0.45*1.0;
I_CaNa_sl = Fsl_CaL*ibarna_sl*Y(11)*Y(12)*(1.0-Y(14)+fcaCaMSL)*Q10CaL^Qpow*0.45*1.0;
I_CaNa = I_CaNa_junc+I_CaNa_sl;
I_Catot = I_Ca+I_CaK+I_CaNa;
I_cabk = I_cabk_junc+I_cabk_sl;
GClCa = 0.5*0.109625;
KdClCa = 100.0e-3;
Cli = 15.0;
Clo = 150.0;
ecl = 1.0/FoRT*log(Cli/Clo);
I_ClCa_junc = Fjunc*GClCa/(1.0+KdClCa/Y(2))*(Y(39)-ecl);
I_ClCa_sl = Fsl*GClCa/(1.0+KdClCa/Y(3))*(Y(39)-ecl);
I_ClCa = I_ClCa_junc+I_ClCa_sl;
GClB = 1.0*9.0e-3;
I_Clbk = GClB*(Y(39)-ecl);
ek = 1.0/FoRT*log(Ko/Y(28));
aki = 1.02/(1.0+exp(0.2385*(Y(39)-ek-59.215)));
bki = (0.49124*exp(0.08032*(Y(39)+5.476-ek))+exp(0.06175*(Y(39)-ek-594.31)))/(1.0+exp(-0.5143*(Y(39)-ek+4.753)));
kiss = aki/(aki+bki);
I_ki = 1.0*0.35*sqrt(Ko/5.4)*kiss*(Y(39)-ek);
kp_kp = 1.0/(1.0+exp(7.488-Y(39)/5.98));
gkp = 2.0*0.001;
I_kp_junc = Fjunc*gkp*kp_kp*(Y(39)-ek);
I_kp_sl = Fsl*gkp*kp_kp*(Y(39)-ek);
I_kp = I_kp_junc+I_kp_sl;
gkr = 0.035*sqrt(Ko/5.4);
xrss = 1.0/(1.0+exp(-(Y(39)+10.0)/5.0));
tauxr = 550.0/(1.0+exp((-22.0-Y(39))/9.0))*6.0/(1.0+exp((Y(39)-(-11.0))/9.0))+230.0/(1.0+exp((Y(39)-(-40.0))/20.0));
dY(15, 1) = (xrss-Y(15))/tauxr;
rkr = 1.0/(1.0+exp((Y(39)+74.0)/24.0));
I_kr = gkr*Y(15)*rkr*(Y(39)-ek);
pNaK = 0.01833;
eks = 1.0/FoRT*log((Ko+pNaK*Nao)/(Y(28)+pNaK*Y(31)));
gks_junc = 0.0035;
gks_sl = 0.0035;
xsss = 1.0/(1.0+exp(-(Y(39)+3.8)/14.25));
tauxs = 990.1/(1.0+exp(-(Y(39)+2.436)/14.12));
dY(16, 1) = (xsss-Y(16))/tauxs;
I_ks_junc = Fjunc*gks_junc*Y(16)^2.0*(Y(39)-eks);
I_ks_sl = Fsl*gks_sl*Y(16)^2.0*(Y(39)-eks);
I_ks = I_ks_junc+I_ks_sl;
I_ncx = I_ncx_junc+I_ncx_sl;
mss = 1.0/(1.0+exp(-(56.86+Y(39))/9.03))^2.0;
taum = 0.1292*exp(-((Y(39)+45.79)/15.54)^2.0)+0.06487*exp(-((Y(39)-4.823)/51.12)^2.0);

if (Y(39) >= -40.0)
   ah = 0.0;
else
   ah = 0.057*exp(-(Y(39)+80.0)/6.8);
end;

if (Y(39) >= -40.0)
   bh = 0.77/(0.13*(1.0+exp(-(Y(39)+10.66)/11.1)));
else
   bh = 2.7*exp(0.079*Y(39))+3.1e5*exp(0.3485*Y(39));
end;

tauh = 1.0/(ah+bh);
hss = 1.0/(1.0+exp((Y(39)+71.55)/7.43))^2.0;

if (Y(39) >= -40.0)
   aj = 0.0;
else
   aj = (-2.5428e4*exp(0.2444*Y(39))-6.948e-6*exp(-0.04391*Y(39)))*(Y(39)+37.78)/(1.0+exp(0.311*(Y(39)+79.23)));
end;

if (Y(39) >= -40.0)
   bj = 0.6*exp(0.057*Y(39))/(1.0+exp(-0.1*(Y(39)+32.0)));
else
   bj = 0.02424*exp(-0.01052*Y(39))/(1.0+exp(-0.1378*(Y(39)+40.14)));
end;

tauj = 1.0/(aj+bj);
jss = 1.0/(1.0+exp((Y(39)+71.55)/7.43))^2.0;
dY(19, 1) = (mss-Y(19))/taum;
dY(17, 1) = (hss-Y(17))/tauh;
dY(18, 1) = (jss-Y(18))/tauj;
GNa = 23.0;
ena_junc = 1.0/FoRT*log(Nao/Y(32));
I_Na_junc = Fjunc*GNa*Y(19)^3.0*Y(17)*Y(18)*(Y(39)-ena_junc);
ena_sl = 1.0/FoRT*log(Nao/Y(33));
I_Na_sl = Fsl*GNa*Y(19)^3.0*Y(17)*Y(18)*(Y(39)-ena_sl);
I_Na = I_Na_junc+I_Na_sl;
GNaB = 0.597e-3;
I_nabk_junc = Fjunc*GNaB*(Y(39)-ena_junc);
I_nabk_sl = Fsl*GNaB*(Y(39)-ena_sl);
I_nabk = I_nabk_junc+I_nabk_sl;
sigma = (exp(Nao/67.3)-1.0)/7.0;
fnak = 1.0/(1.0+0.1245*exp(-0.1*Y(39)*FoRT)+0.0365*sigma*exp(-Y(39)*FoRT));
IbarNaK = 1.0*1.8;
KmNaip = 11.0;
KmKo = 1.5;
I_nak_junc = Fjunc*IbarNaK*fnak*Ko/(1.0+(KmNaip/Y(32))^4.0)/(Ko+KmKo);
I_nak_sl = Fsl*IbarNaK*fnak*Ko/(1.0+(KmNaip/Y(33))^4.0)/(Ko+KmKo);
I_nak = I_nak_junc+I_nak_sl;
I_pca = I_pca_junc+I_pca_sl;
GtoSlow = 0.13*0.3*0.964;
GtoFast = 0.13*0.3*0.036;
xtoss = 1.0/(1.0+exp(-(Y(39)-19.0)/13.0));
ytoss = 1.0/(1.0+exp((Y(39)+19.5)/5.0));
tauxtos = 9.0/(1.0+exp((Y(39)+3.0)/15.0))+0.5;
tauytos = 800.0/(1.0+exp((Y(39)+60.0)/10.0))+30.0;
dY(21, 1) = (xtoss-Y(21))/tauxtos;
dY(23, 1) = (ytoss-Y(23))/tauytos;
I_tos = GtoSlow*Y(21)*Y(23)*(Y(39)-ek);
tauxtof = 8.5*exp(-((Y(39)+45.0)/50.0)^2.0)+0.5;
tauytof = 85.0*exp(-(Y(39)+40.0)^2.0/220.0)+7.0;
dY(20, 1) = (xtoss-Y(20))/tauxtof;
dY(22, 1) = (ytoss-Y(22))/tauytof;
I_tof = GtoFast*Y(20)*Y(22)*(Y(39)-ek);
I_to = I_tos+I_tof;
dY(26, 1) = kon_sll*Y(2)*(Bmax_SLlowj-Y(26))-koff_sll*Y(26);
dY(27, 1) = kon_sll*Y(3)*(Bmax_SLlowsl-Y(27))-koff_sll*Y(27);
dY(24, 1) = kon_slh*Y(2)*(Bmax_SLhighj-Y(24))-koff_slh*Y(24);
dY(25, 1) = kon_slh*Y(3)*(Bmax_SLhighsl-Y(25))-koff_slh*Y(25);
I_K_tot = I_to+I_kr+I_ks+I_ki-2.0*I_nak+I_CaK+I_kp;
dY(28, 1) = 0.0;
kon_na = 0.1e-3;
Bmax_Naj = 7.561;
koff_na = 1.0e-3;
dNa_Bj_dt = kon_na*Y(32)*(Bmax_Naj-Y(29))-koff_na*Y(29);
dY(29, 1) = dNa_Bj_dt;
Bmax_Nasl = 1.65;
dNa_Bsl_dt = kon_na*Y(33)*(Bmax_Nasl-Y(30))-koff_na*Y(30);
dY(30, 1) = dNa_Bsl_dt;
I_Na_tot_junc = I_Na_junc+I_nabk_junc+3.0*I_ncx_junc+3.0*I_nak_junc+I_CaNa_junc;
I_Na_tot_sl = I_Na_sl+I_nabk_sl+3.0*I_ncx_sl+3.0*I_nak_sl+I_CaNa_sl;
I_Na_tot_sl2 = 3.0*I_ncx_sl+3.0*I_nak_sl+I_CaNa_sl;
I_Na_tot_junc2 = 3.0*I_ncx_junc+3.0*I_nak_junc+I_CaNa_junc;
J_na_juncsl = 1.8313e-14;
dY(32, 1) = -I_Na_tot_junc*Cmem/(Vjunc*Frdy)+J_na_juncsl/Vjunc*(Y(33)-Y(32))-dNa_Bj_dt;
J_na_slmyo = 1.6386e-12;
dY(33, 1) = -I_Na_tot_sl*Cmem/(Vsl*Frdy)+J_na_juncsl/Vsl*(Y(32)-Y(33))+J_na_slmyo/Vsl*(Y(31)-Y(33))-dNa_Bsl_dt;
dY(31, 1) = J_na_slmyo/Vmyo*(Y(33)-Y(31));
kon_csqn = 100.0;
Bmax_Csqn = 140.0e-3*Vmyo/Vsr;
koff_csqn = 65.0;
dY(35, 1) = kon_csqn*Y(34)*(Bmax_Csqn-Y(35))-koff_csqn*Y(35);
dY(34, 1) = J_serca-(J_SRleak*Vmyo/Vsr+J_SRCarel)-(kon_csqn*Y(34)*(Bmax_Csqn-Y(35))-koff_csqn*Y(35));
MaxSR = 15.0;
MinSR = 1.0;
ec50SR = 0.45;
kCaSR = MaxSR-(MaxSR-MinSR)/(1.0+(ec50SR/Y(34))^2.5);
koCa = 10.0;
koSRCa = koCa/kCaSR;
kiCa = 0.5;
kiSRCa = kiCa*kCaSR;
RI = 1.0-Y(38)-Y(37)-Y(36);
kim = 0.005;
kom = 0.06;
dY(38, 1) = kim*RI-kiSRCa*Y(2)*Y(38)-(koSRCa*Y(2)^2.0*Y(38)-kom*Y(37));
dY(37, 1) = koSRCa*Y(2)^2.0*Y(38)-kom*Y(37)-(kiSRCa*Y(2)*Y(37)-kim*Y(36));
dY(36, 1) = kiSRCa*Y(2)*Y(37)-kim*Y(36)-(kom*Y(36)-koSRCa*Y(2)^2.0*RI);

if ((time >= stim_start) && (time <= stim_start+stim_duration))
   i_Stim = -stim_amplitude;
else
   i_Stim = 0.0;
end;

I_Na_tot = I_Na_tot_junc+I_Na_tot_sl;
I_Cl_tot = I_ClCa+I_Clbk;
I_Ca_tot = I_Ca_tot_junc+I_Ca_tot_sl;
I_tot = I_Na_tot+I_Cl_tot+I_Ca_tot+I_K_tot;
dY(39, 1) = -(I_tot+i_Stim);
junctionLength = 160.0e-3;
junctionRadius = 15.0e-3;
distSLcyto = 0.45;
distJuncSL = 0.5;
DcaJuncSL = 1.64e-6;
DcaSLcyto = 1.22e-6;
DnaJuncSL = 1.09e-5;
DnaSLcyto = 1.79e-5;
SAjunc = 20150.0*pi*2.0*junctionLength*junctionRadius;
SAsl = pi*2.0*cellRadius*cellLength;
Q10NaK = 1.63;
Q10KmNai = 1.39;

CompVar = [I_Ca_tot_junc I_Ca_tot_sl J_CaB_cytosol I_cabk I_cabk_junc I_cabk_sl I_Ca I_CaK I_CaNa I_CaNa_junc I_CaNa_sl I_Ca_junc I_Ca_sl I_Catot dss fcaCaMSL fcaCaj fss ibarca_j ibarca_sl ibark ibarna_j ibarna_sl taud tauf I_ClCa I_ClCa_junc I_ClCa_sl I_Clbk I_ki aki bki kiss I_kp I_kp_junc I_kp_sl kp_kp I_kr gkr rkr tauxr xrss I_ks I_ks_junc I_ks_sl eks gks_junc gks_sl tauxs xsss I_ncx I_ncx_junc I_ncx_sl Ka_junc Ka_sl s1_junc s1_sl s2_junc s2_sl s3_junc s3_sl I_nabk I_nabk_junc I_nabk_sl I_nak I_nak_junc I_nak_sl fnak sigma I_Na I_Na_junc I_Na_sl ah aj bh bj hss jss mss tauh tauj taum I_pca I_pca_junc I_pca_sl GtoFast GtoSlow I_to I_tof I_tos tauxtof tauxtos tauytof tauytos xtoss ytoss J_CaB_junction J_CaB_sl I_K_tot dNa_Bj_dt dNa_Bsl_dt I_Na_tot_junc I_Na_tot_junc2 I_Na_tot_sl I_Na_tot_sl2 J_SRCarel J_SRleak J_serca MaxSR MinSR RI kCaSR kiSRCa koSRCa I_Ca_tot I_Cl_tot I_Na_tot I_tot i_Stim Bmax_CaM Bmax_Csqn Bmax_Naj Bmax_Nasl Bmax_SLhighj Bmax_SLhighsl Bmax_SLlowj Bmax_SLlowsl Bmax_SR Bmax_TnChigh Bmax_TnClow Bmax_myosin Cao Cli Clo Cmem DcaJuncSL DcaSLcyto DnaJuncSL DnaSLcyto Fjunc Fjunc_CaL FoRT Frdy Fsl Fsl_CaL GCaB GClB GClCa GNa GNaB IbarNCX IbarNaK IbarSLCaP J_ca_juncsl J_ca_slmyo J_na_juncsl J_na_slmyo KdClCa Kdact KmCai KmCao KmKo KmNai KmNaip KmNao KmPCa Kmf Kmr Ko Mgi Nao Q10CaL Q10KmNai Q10NCX Q10NaK Q10SLCaP Q10SRCaP Qpow R SAjunc SAsl Temp Vcell Vjunc Vmax_SRCaP Vmyo Vsl Vsr cellLength cellRadius distJuncSL distSLcyto ec50SR eca_junc eca_sl ecl ek ena_junc ena_sl epi gkp hillSRCaP junctionLength junctionRadius kiCa kim koCa koff_cam koff_csqn koff_myoca koff_myomg koff_na koff_slh koff_sll koff_sr koff_tnchca koff_tnchmg koff_tncl kom kon_cam kon_csqn kon_myoca kon_myomg kon_na kon_slh kon_sll kon_sr kon_tnchca kon_tnchmg kon_tncl ks ksat nu pCa pK pNa pNaK ];

%===============================================================================
% End of file
%===============================================================================
