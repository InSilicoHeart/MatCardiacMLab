%===============================================================================
% CellML file:   E:\My Dropbox\UniZar DropBox\Doctorado\CellML\Iyer_Mazhari_Winslow_2004.cellml
% CellML model:  iyer_model_2004
% Date and time: 04/02/2011 at 14:48:36
%-------------------------------------------------------------------------------
% Conversion from CellML 1.0 to MATLAB (init) was done using COR (0.9.31.1409)
%    Copyright 2002-2011 Dr Alan Garny
%    http://cor.physiol.ox.ac.uk/ - cor@physiol.ox.ac.uk
%-------------------------------------------------------------------------------
% http://www.cellml.org/
%===============================================================================

function [dY, CompVar] = Iyer_Mazhari_Winslow_2004(time, Y, Constants, Values)

%-------------------------------------------------------------------------------
% Initial conditions
%-------------------------------------------------------------------------------

% Y = [0.2852239446, 0.2855294915, 0.1420215245e-3, 0.8601192016e-4, 0.1255589432e3, 0.9798304162e1, -0.9065755929e2, 0.5977099765, 0.1730990528, 0.01881072386, 9.16070135e-4, 0.03539084346, 0.005428824353, 0.02287858869, 0.03233800003, 0.1134082058, 1.975541357e-5, 0.9513721351, 0.02668288089, 2.806380358e-4, 1.311837579e-6, 0.01513025204, 0.005442964601, 9.918373359000001e-4, 9.514386057000001e-5, 2.742677382e-6, 2.29955624e-9, 0.8621934054, 0.01141398211, 5.666325225e-5, 1.25021357e-7, 1.034426748e-10, 0.1198547081, 0.006346794302, 1.260326488e-4, 1.112315238e-6, 3.681315892e-9, 7.757981563e-12, 0.9997157074, 0.4448038946, 0.554535924, 0.6601783287e-3, 0.397392006e-8, 0.9772152481, 0.8046584973e-1, 0.996697338, 4.340879648e-4, 7.634099755000001e-5, 1.533347007e-6, 9.511789113e-6, 0.9645606295, 0.03542613568, 2.491710696e-7, 1.298547822e-5, 0.1437575649, 0.05786120057, 0.005496292279, 1.957874519e-4, 4.17679396e-4, 0.0417776208, 0.004552898364, 2.20520743e-4, 4.005266484e-6, 1.57442749e-8, 2.856607179e-9, 0.4749950008, 0.2707214097];

% YNames = {'CaJSR', 'CaNSR', 'CaSS', 'Cai', 'Ki', 'Nai', 'V', 'C0Kv14', 'C1Kv14', 'C2Kv14', 'C3Kv14', 'CI0Kv14', 'CI1Kv14', 'CI2Kv14', 'CI3Kv14', 'OIKv14', 'OKv14', 'C0Kv43', 'C1Kv43', 'C2Kv43', 'C3Kv43', 'CI0Kv43', 'CI1Kv43', 'CI2Kv43', 'CI3Kv43', 'OIKv43', 'OKv43', 'C0', 'C1', 'C2', 'C3', 'C4', 'CCa0', 'CCa1', 'CCa2', 'CCa3', 'CCa4', 'Open', 'yCa', 'C1_RyR', 'C2_RyR', 'O1_RyR', 'O2_RyR', 'HTRPNCa', 'LTRPNCa', 'C1Herg', 'C2Herg', 'C3Herg', 'IHerg', 'OHerg', 'C0ks', 'C1ks', 'O1ks', 'O2ks', 'na1', 'na10', 'na11', 'na12', 'na13', 'na2', 'na3', 'na4', 'na5', 'na6', 'na7', 'na8', 'na9'};
% YUnits = {'mM', 'mM', 'mM', 'mM', 'mM', 'mM', 'mV', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless'};
% YComponents = {'COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES', 'COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES', 'COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES', 'COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES', 'COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES', 'COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES', 'COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES', 'COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES', 'COMPUTE_DERIVATIVES_OF_RyR_RECEPTOR_STATES', 'COMPUTE_DERIVATIVES_OF_RyR_RECEPTOR_STATES', 'COMPUTE_DERIVATIVES_OF_RyR_RECEPTOR_STATES', 'COMPUTE_DERIVATIVES_OF_RyR_RECEPTOR_STATES', 'COMPUTE_Jtrpn_and_BUFFER_SCALE_FACTORS', 'COMPUTE_Jtrpn_and_BUFFER_SCALE_FACTORS', 'IKr', 'IKr', 'IKr', 'IKr', 'IKr', 'IKs', 'IKs', 'IKs', 'IKs', 'INa', 'INa', 'INa', 'INa', 'INa', 'INa', 'INa', 'INa', 'INa', 'INa', 'INa', 'INa', 'INa'};

%-------------------------------------------------------------------------------
% State variables
%-------------------------------------------------------------------------------

% 1: CaJSR (mM) (in COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES)
% 2: CaNSR (mM) (in COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES)
% 3: CaSS (mM) (in COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES)
% 4: Cai (mM) (in COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES)
% 5: Ki (mM) (in COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES)
% 6: Nai (mM) (in COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES)
% 7: V (mV) (in COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES)
% 8: C0Kv14 (dimensionless) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% 9: C1Kv14 (dimensionless) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% 10: C2Kv14 (dimensionless) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% 11: C3Kv14 (dimensionless) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% 12: CI0Kv14 (dimensionless) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% 13: CI1Kv14 (dimensionless) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% 14: CI2Kv14 (dimensionless) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% 15: CI3Kv14 (dimensionless) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% 16: OIKv14 (dimensionless) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% 17: OKv14 (dimensionless) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% 18: C0Kv43 (dimensionless) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% 19: C1Kv43 (dimensionless) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% 20: C2Kv43 (dimensionless) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% 21: C3Kv43 (dimensionless) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% 22: CI0Kv43 (dimensionless) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% 23: CI1Kv43 (dimensionless) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% 24: CI2Kv43 (dimensionless) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% 25: CI3Kv43 (dimensionless) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% 26: OIKv43 (dimensionless) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% 27: OKv43 (dimensionless) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% 28: C0 (dimensionless) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% 29: C1 (dimensionless) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% 30: C2 (dimensionless) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% 31: C3 (dimensionless) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% 32: C4 (dimensionless) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% 33: CCa0 (dimensionless) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% 34: CCa1 (dimensionless) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% 35: CCa2 (dimensionless) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% 36: CCa3 (dimensionless) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% 37: CCa4 (dimensionless) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% 38: Open (dimensionless) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% 39: yCa (dimensionless) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% 40: C1_RyR (dimensionless) (in COMPUTE_DERIVATIVES_OF_RyR_RECEPTOR_STATES)
% 41: C2_RyR (dimensionless) (in COMPUTE_DERIVATIVES_OF_RyR_RECEPTOR_STATES)
% 42: O1_RyR (dimensionless) (in COMPUTE_DERIVATIVES_OF_RyR_RECEPTOR_STATES)
% 43: O2_RyR (dimensionless) (in COMPUTE_DERIVATIVES_OF_RyR_RECEPTOR_STATES)
% 44: HTRPNCa (dimensionless) (in COMPUTE_Jtrpn_and_BUFFER_SCALE_FACTORS)
% 45: LTRPNCa (dimensionless) (in COMPUTE_Jtrpn_and_BUFFER_SCALE_FACTORS)
% 46: C1Herg (dimensionless) (in IKr)
% 47: C2Herg (dimensionless) (in IKr)
% 48: C3Herg (dimensionless) (in IKr)
% 49: IHerg (dimensionless) (in IKr)
% 50: OHerg (dimensionless) (in IKr)
% 51: C0ks (dimensionless) (in IKs)
% 52: C1ks (dimensionless) (in IKs)
% 53: O1ks (dimensionless) (in IKs)
% 54: O2ks (dimensionless) (in IKs)
% 55: na1 (dimensionless) (in INa)
% 56: na10 (dimensionless) (in INa)
% 57: na11 (dimensionless) (in INa)
% 58: na12 (dimensionless) (in INa)
% 59: na13 (dimensionless) (in INa)
% 60: na2 (dimensionless) (in INa)
% 61: na3 (dimensionless) (in INa)
% 62: na4 (dimensionless) (in INa)
% 63: na5 (dimensionless) (in INa)
% 64: na6 (dimensionless) (in INa)
% 65: na7 (dimensionless) (in INa)
% 66: na8 (dimensionless) (in INa)
% 67: na9 (dimensionless) (in INa)

%-------------------------------------------------------------------------------
% Constants
%-------------------------------------------------------------------------------

Acap = 1.534e-4;   % cm2 (in COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES)
Cao = 2.0;   % mM (in COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES)
Faraday = 96.5;   % coulomb_per_millimole (in COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES)
Ko = 4.0;   % mM (in COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES)
Nao = 138.0;   % mM (in COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES)
Rgas = 8.315;   % joule_per_mole_kelvin (in COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES)
Temp = 310.0;   % kelvin (in COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES)
VJSR = 0.16e-6;   % uL (in COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES)
VNSR = 2.1e-6;   % uL (in COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES)
VSS = 1.2e-9;   % uL (in COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES)
Vmyo = 25.84e-6;   % uL (in COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES)
aaKv14 = 0.00768548031;   % per_mV (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
alphaa0Kv14 = 1.84002414554;   % per_ms (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
alphai0Kv14 = 0.00305767916;   % per_ms (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
b1Kv14 = 1.00947847105;   % dimensionless (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
b2Kv14 = 1.17100540567;   % dimensionless (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
b3Kv14 = 0.63902768758;   % dimensionless (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
b4Kv14 = 2.12035379095;   % dimensionless (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
baKv14 = 0.07793378174;   % per_mV (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
betaa0Kv14 = 0.0108174834;   % per_ms (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
betai0Kv14 = 0.00000244936;   % per_ms (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
f1Kv14 = 0.52465073996;   % dimensionless (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
f2Kv14 = 17.51885408639;   % dimensionless (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
f3Kv14 = 938.58764534556;   % dimensionless (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
f4Kv14 = 54749.19473332601;   % dimensionless (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
aaKv43 = 0.028983;   % per_mV (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
aiKv43 = 0.000373016;   % per_mV (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
alphaa0Kv43 = 0.543708;   % per_ms (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
alphai0Kv43 = 0.0498424;   % per_ms (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
b1Kv43 = 6.77348;   % dimensionless (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
b2Kv43 = 15.6212705152;   % dimensionless (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
b3Kv43 = 28.7532603313;   % dimensionless (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
b4Kv43 = 524.576206679;   % dimensionless (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
baKv43 = 0.0468437;   % per_mV (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
betaa0Kv43 = 0.080185;   % per_ms (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
betai0Kv43 = 0.000819482;   % per_ms (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
biKv43 = 0.00000005374;   % per_mV (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
f1Kv43 = 1.8936;   % dimensionless (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
f2Kv43 = 14.224647456;   % dimensionless (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
f3Kv43 = 158.574378389;   % dimensionless (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
f4Kv43 = 142.936645351;   % dimensionless (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
aL = 2.0;   % dimensionless (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
bL = 2.0;   % dimensionless (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
fL = 0.3;   % per_ms (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
gL = 4.0;   % per_ms (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
kaminus = 0.576;   % per_ms (in COMPUTE_DERIVATIVES_OF_RyR_RECEPTOR_STATES)
kaplus = 0.01215;   % per_uM4_per_ms (in COMPUTE_DERIVATIVES_OF_RyR_RECEPTOR_STATES)
kbminus = 1.93;   % per_ms (in COMPUTE_DERIVATIVES_OF_RyR_RECEPTOR_STATES)
kbplus = 0.00405;   % per_uM3_per_ms (in COMPUTE_DERIVATIVES_OF_RyR_RECEPTOR_STATES)
kcminus = 0.0008;   % per_ms (in COMPUTE_DERIVATIVES_OF_RyR_RECEPTOR_STATES)
kcplus = 0.1;   % per_ms (in COMPUTE_DERIVATIVES_OF_RyR_RECEPTOR_STATES)
mcoop = 3.0;   % dimensionless (in COMPUTE_DERIVATIVES_OF_RyR_RECEPTOR_STATES)
ncoop = 4.0;   % dimensionless (in COMPUTE_DERIVATIVES_OF_RyR_RECEPTOR_STATES)
ICahalf = -0.265;   % uA_per_uF (in COMPUTE_ICa_ICaK)
Pscale = 7.0;   % dimensionless (in COMPUTE_ICa_ICaK)
KSR = 1.2;   % mM (in COMPUTE_INTRACELLULAR_CALCIUM_FLUXES)
Kfb = 0.000168;   % mM (in COMPUTE_INTRACELLULAR_CALCIUM_FLUXES)
Krb = 3.29;   % mM (in COMPUTE_INTRACELLULAR_CALCIUM_FLUXES)
Nfb = 1.2;   % dimensionless (in COMPUTE_INTRACELLULAR_CALCIUM_FLUXES)
Nrb = 1.0;   % dimensionless (in COMPUTE_INTRACELLULAR_CALCIUM_FLUXES)
tautr = 0.5747;   % ms (in COMPUTE_INTRACELLULAR_CALCIUM_FLUXES)
tauxfer = 26.7;   % ms (in COMPUTE_INTRACELLULAR_CALCIUM_FLUXES)
v1 = 1.8;   % per_ms (in COMPUTE_INTRACELLULAR_CALCIUM_FLUXES)
vmaxf = 0.0748e-3;   % per_ms (in COMPUTE_INTRACELLULAR_CALCIUM_FLUXES)
vmaxr = 0.318e-3;   % per_ms (in COMPUTE_INTRACELLULAR_CALCIUM_FLUXES)
GCab = 7.684e-5;   % mS_per_uF (in COMPUTE_INaK_INaCa_ICab_IpCa)
INaKmax = 2.387;   % uA_per_uF (in COMPUTE_INaK_INaCa_ICab_IpCa)
IpCamax = 0.05;   % uA_per_uF (in COMPUTE_INaK_INaCa_ICab_IpCa)
KmCa = 1.38;   % mM (in COMPUTE_INaK_INaCa_ICab_IpCa)
KmKo = 1.5;   % mM (in COMPUTE_INaK_INaCa_ICab_IpCa)
KmNa = 87.5;   % mM (in COMPUTE_INaK_INaCa_ICab_IpCa)
KmNai = 20.0;   % mM (in COMPUTE_INaK_INaCa_ICab_IpCa)
KmpCa = 0.0005;   % mM (in COMPUTE_INaK_INaCa_ICab_IpCa)
eta = 0.35;   % dimensionless (in COMPUTE_INaK_INaCa_ICab_IpCa)
kNaCa = 0.44;   % uA_per_uF (in COMPUTE_INaK_INaCa_ICab_IpCa)
ksat = 0.2;   % dimensionless (in COMPUTE_INaK_INaCa_ICab_IpCa)
GK1 = 0.1253051261188079722568586886469e0;   % mS_per_uF (in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
GKr = 0.0186e0;   % mS_per_uF (in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
GKs = 0.0035e0;   % mS_per_uF (in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
GNa = 56.32e0;   % mS_per_uF (in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
GNab = 0.001e0;   % mS_per_uF (in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
Kv43Frac = 0.889;   % dimensionless (in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
KvScale = 0.872;   % dimensionless (in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
CMDNtot = 50.0e-3;   % mM (in COMPUTE_Jtrpn_and_BUFFER_SCALE_FACTORS)
CSQNtot = 15.0e0;   % mM (in COMPUTE_Jtrpn_and_BUFFER_SCALE_FACTORS)
EGTAtot = 0.0e0;   % mM (in COMPUTE_Jtrpn_and_BUFFER_SCALE_FACTORS)
HTRPNtot = 140.0e-3;   % mM (in COMPUTE_Jtrpn_and_BUFFER_SCALE_FACTORS)
KmCMDN = 2.38e-3;   % mM (in COMPUTE_Jtrpn_and_BUFFER_SCALE_FACTORS)
KmCSQN = 0.8e0;   % mM (in COMPUTE_Jtrpn_and_BUFFER_SCALE_FACTORS)
KmEGTA = 1.5e-4;   % mM (in COMPUTE_Jtrpn_and_BUFFER_SCALE_FACTORS)
LTRPNtot = 70.0e-3;   % mM (in COMPUTE_Jtrpn_and_BUFFER_SCALE_FACTORS)
khtrpn_minus = 0.066e-3;   % per_ms (in COMPUTE_Jtrpn_and_BUFFER_SCALE_FACTORS)
khtrpn_plus = 20.0e0;   % per_mM_per_ms (in COMPUTE_Jtrpn_and_BUFFER_SCALE_FACTORS)
kltrpn_minus = 40.0e-3;   % per_ms (in COMPUTE_Jtrpn_and_BUFFER_SCALE_FACTORS)
kltrpn_plus = 40.0e0;   % per_mM_per_ms (in COMPUTE_Jtrpn_and_BUFFER_SCALE_FACTORS)
A0_HERG = 0.017147641733086;   % per_ms (in IKr)
A1_HERG = 0.03969328381141;   % per_ms (in IKr)
A2_HERG = 0.02057448605977;   % per_ms (in IKr)
A3_HERG = 0.00134366604423;   % per_ms (in IKr)
A4_HERG = 0.10666316491288;   % per_ms (in IKr)
A5_HERG = 0.00646393910049;   % per_ms (in IKr)
A6_HERG = 0.00008039374403;   % per_ms (in IKr)
B0_HERG = 0.03304608038835;   % per_mV (in IKr)
B1_HERG = -0.0430605416398;   % per_mV (in IKr)
B2_HERG = 0.02617412715118;   % per_mV (in IKr)
B3_HERG = -0.02691385498399;   % per_mV (in IKr)
B4_HERG = 0.00568908859717;   % per_mV (in IKr)
B5_HERG = -0.04536642959543;   % per_mV (in IKr)
B6_HERG = 0.00000069808924;   % per_mV (in IKr)
T_Const_HERG = 5.320000001;   % dimensionless (in IKr)
TNa = 294.16;   % kelvin (in INa)
stim_amplitude = -15.0;   % uA_per_uF (in I_stimulus)
stim_duration = 3.0;   % ms (in I_stimulus)

reasign(Constants, Values)

%-------------------------------------------------------------------------------
% Computed variables
%-------------------------------------------------------------------------------

% C (mF) (in COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES)
% RT_over_F (mV) (in COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES)
% a11 (F_M_per_coulomb) (a1 in COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES)
% a21 (F_M_per_coulomb) (a2 in COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES)
% i_tot (uA_per_uF) (in COMPUTE_CONCENTRATION_AND_VOLTAGE_DERIVATIVES)
% C0Kv14_to_C1Kv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% C0Kv14_to_CI0Kv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% C1Kv14_to_C0Kv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% C1Kv14_to_C2Kv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% C1Kv14_to_CI1Kv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% C2Kv14_to_C1Kv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% C2Kv14_to_C3Kv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% C2Kv14_to_CI2Kv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% C3Kv14_to_C2Kv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% C3Kv14_to_CI3Kv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% C3Kv14_to_OKv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% CI0Kv14_to_C0Kv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% CI0Kv14_to_CI1Kv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% CI1Kv14_to_C1Kv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% CI1Kv14_to_CI0Kv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% CI1Kv14_to_CI2Kv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% CI2Kv14_to_C2Kv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% CI2Kv14_to_CI1Kv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% CI2Kv14_to_CI3Kv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% CI3Kv14_to_C3Kv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% CI3Kv14_to_CI2Kv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% CI3Kv14_to_OIKv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% OIKv14_to_CI3Kv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% OIKv14_to_OKv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% OKv14_to_C3Kv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% OKv14_to_OIKv14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% a1_C0_1 (per_ms) (a1_C0 in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% a1_C1_1 (per_ms) (a1_C1 in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% a1_C2_1 (per_ms) (a1_C2 in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% a1_C3_1 (per_ms) (a1_C3 in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% a1_CI0 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% a1_CI1 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% a1_CI2 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% a1_CI3 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% a1_O_1 (per_ms) (a1_O in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% a1_OI (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% a2_C0_1 (per_ms) (a2_C0 in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% a2_C1_1 (per_ms) (a2_C1 in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% a2_C2_1 (per_ms) (a2_C2 in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% a2_C3_1 (per_ms) (a2_C3 in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% a2_CI0 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% a2_CI1 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% a2_CI2 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% a2_CI3 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% a2_O_1 (per_ms) (a2_O in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% a2_OI (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% alpha_act14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% alpha_inact14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% beta_act14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% beta_inact14 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv1_4_CHANNEL_STATES)
% C0Kv43_to_C1Kv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% C0Kv43_to_CI0Kv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% C1Kv43_to_C0Kv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% C1Kv43_to_C2Kv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% C1Kv43_to_CI1Kv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% C2Kv43_to_C1Kv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% C2Kv43_to_C3Kv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% C2Kv43_to_CI2Kv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% C3Kv43_to_C2Kv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% C3Kv43_to_CI3Kv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% C3Kv43_to_OKv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% CI0Kv43_to_C0Kv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% CI0Kv43_to_CI1Kv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% CI1Kv43_to_C1Kv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% CI1Kv43_to_CI0Kv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% CI1Kv43_to_CI2Kv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% CI2Kv43_to_C2Kv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% CI2Kv43_to_CI1Kv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% CI2Kv43_to_CI3Kv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% CI3Kv43_to_C3Kv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% CI3Kv43_to_CI2Kv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% CI3Kv43_to_OIKv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% OIKv43_to_CI3Kv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% OIKv43_to_OKv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% OKv43_to_C3Kv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% OKv43_to_OIKv43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% a1_C043 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% a1_C143 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% a1_C243 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% a1_C343 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% a1_I043 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% a1_I143 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% a1_I243 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% a1_I343 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% a1_O43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% a1_OI43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% a2_C043 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% a2_C143 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% a2_C243 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% a2_C343 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% a2_I043 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% a2_I143 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% a2_I243 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% a2_I343 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% a2_O43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% a2_OI43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% alpha_act43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% alpha_inact43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% beta_act43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% beta_inact43 (per_ms) (in COMPUTE_DERIVATIVES_OF_Kv4_3_CHANNEL_STATES)
% C0_to_C1 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% C0_to_CCa0 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% C1_to_C0 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% C1_to_C2 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% C1_to_CCa1 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% C2_to_C1 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% C2_to_C3 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% C2_to_CCa2 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% C3_to_C2 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% C3_to_C4 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% C3_to_CCa3 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% C4_to_C3 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% C4_to_CCa4 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% CCa0_to_C0 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% CCa0_to_CCa1 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% CCa1_to_C1 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% CCa1_to_CCa0 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% CCa1_to_CCa2 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% CCa2_to_C2 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% CCa2_to_CCa1 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% CCa2_to_CCa3 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% CCa3_to_C3 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% CCa3_to_CCa2 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% CCa3_to_CCa4 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% CCa4_to_C4 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% CCa4_to_CCa3 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% a1_C0_2 (per_ms) (a1_C0 in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% a1_C1_2 (per_ms) (a1_C1 in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% a1_C2_2 (per_ms) (a1_C2 in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% a1_C3_2 (per_ms) (a1_C3 in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% a1_C4 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% a1_Ca0 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% a1_Ca1 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% a1_Ca2 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% a1_Ca3 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% a1_Ca4 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% a1_Cainf (dimensionless) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% a2_C0_2 (per_ms) (a2_C0 in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% a2_C1_2 (per_ms) (a2_C1 in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% a2_C2_2 (per_ms) (a2_C2 in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% a2_C3_2 (per_ms) (a2_C3 in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% a2_C4 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% a2_Ca0 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% a2_Ca1 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% a2_Ca2 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% a2_Ca3 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% a2_Ca4 (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% alpha (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% alpha_prime (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% beta (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% beta_prime (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% gamma (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% omega (per_ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% tau_yCa (ms) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% yCa_inf (dimensionless) (in COMPUTE_DERIVATIVES_OF_LTYPE_CHANNEL_STATES)
% dC1_RyR (per_ms) (in COMPUTE_DERIVATIVES_OF_RyR_RECEPTOR_STATES)
% dC2_RyR (per_ms) (in COMPUTE_DERIVATIVES_OF_RyR_RECEPTOR_STATES)
% dO1_RyR (per_ms) (in COMPUTE_DERIVATIVES_OF_RyR_RECEPTOR_STATES)
% dO2_RyR (per_ms) (in COMPUTE_DERIVATIVES_OF_RyR_RECEPTOR_STATES)
% ICa (uA_per_uF) (in COMPUTE_ICa_ICaK)
% ICaK (uA_per_uF) (in COMPUTE_ICa_ICaK)
% ICamax (uA_per_uF) (in COMPUTE_ICa_ICaK)
% Icabar (uA_per_uF) (in COMPUTE_ICa_ICaK)
% PCa (litre_per_farad_second) (in COMPUTE_ICa_ICaK)
% PK (litre_per_farad_second) (in COMPUTE_ICa_ICaK)
% PKprime (litre_per_farad_second) (in COMPUTE_ICa_ICaK)
% VF_over_RT_1 (dimensionless) (VF_over_RT in COMPUTE_ICa_ICaK)
% VFsq_over_RT_1 (coulomb_per_millimole) (VFsq_over_RT in COMPUTE_ICa_ICaK)
% a1_Ca (mM) (in COMPUTE_ICa_ICaK)
% a1_K_1 (mM) (a1_K in COMPUTE_ICa_ICaK)
% a2_Ca (dimensionless) (in COMPUTE_ICa_ICaK)
% a2_K_1 (dimensionless) (a2_K in COMPUTE_ICa_ICaK)
% Jrel (mM_per_ms) (in COMPUTE_INTRACELLULAR_CALCIUM_FLUXES)
% Jtr (mM_per_ms) (in COMPUTE_INTRACELLULAR_CALCIUM_FLUXES)
% Jup (mM_per_ms) (in COMPUTE_INTRACELLULAR_CALCIUM_FLUXES)
% Jxfer (mM_per_ms) (in COMPUTE_INTRACELLULAR_CALCIUM_FLUXES)
% fb (dimensionless) (in COMPUTE_INTRACELLULAR_CALCIUM_FLUXES)
% rb (dimensionless) (in COMPUTE_INTRACELLULAR_CALCIUM_FLUXES)
% ICab (uA_per_uF) (in COMPUTE_INaK_INaCa_ICab_IpCa)
% INaCa (uA_per_uF) (in COMPUTE_INaK_INaCa_ICab_IpCa)
% INaK (uA_per_uF) (in COMPUTE_INaK_INaCa_ICab_IpCa)
% IpCa (uA_per_uF) (in COMPUTE_INaK_INaCa_ICab_IpCa)
% VF_over_RT_2 (dimensionless) (VF_over_RT in COMPUTE_INaK_INaCa_ICab_IpCa)
% a1_K_2 (dimensionless) (a1_K in COMPUTE_INaK_INaCa_ICab_IpCa)
% a1_Na_1 (dimensionless) (a1_Na in COMPUTE_INaK_INaCa_ICab_IpCa)
% a1_ncx (mM4) (in COMPUTE_INaK_INaCa_ICab_IpCa)
% a2_K_2 (dimensionless) (a2_K in COMPUTE_INaK_INaCa_ICab_IpCa)
% a2_Na (dimensionless) (in COMPUTE_INaK_INaCa_ICab_IpCa)
% a2_ncx (mM4) (in COMPUTE_INaK_INaCa_ICab_IpCa)
% a3_ncx (dimensionless) (in COMPUTE_INaK_INaCa_ICab_IpCa)
% a4_ncx (mM) (in COMPUTE_INaK_INaCa_ICab_IpCa)
% a5_ncx (mM3) (in COMPUTE_INaK_INaCa_ICab_IpCa)
% fNaK (dimensionless) (in COMPUTE_INaK_INaCa_ICab_IpCa)
% sigma (dimensionless) (in COMPUTE_INaK_INaCa_ICab_IpCa)
% GKv43 (mS_per_uF) (in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
% IK1 (uA_per_uF) (in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
% IKr (uA_per_uF) (in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
% IKs (uA_per_uF) (in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
% IKv14 (uA_per_uF) (in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
% IKv14_K (uA_per_uF) (in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
% IKv14_Na (uA_per_uF) (in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
% IKv43 (uA_per_uF) (in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
% INa (uA_per_uF) (in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
% INab (uA_per_uF) (in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
% Ito1 (uA_per_uF) (in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
% K1_inf (dimensionless) (in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
% PKv14 (litre_per_farad_second) (in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
% VF_over_RT_3 (dimensionless) (VF_over_RT in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
% VFsq_over_RT_2 (coulomb_per_millimole) (VFsq_over_RT in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
% a1_K_3 (mM) (a1_K in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
% a1_Na_2 (mM) (a1_Na in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
% a22 (dimensionless) (a2 in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
% fKo (dimensionless) (in COMPUTE_INa_IKr_IKs_Ito1_IK1_INab_IKp)
% Jtrpn (mM_per_ms) (in COMPUTE_Jtrpn_and_BUFFER_SCALE_FACTORS)
% beta_JSR (dimensionless) (in COMPUTE_Jtrpn_and_BUFFER_SCALE_FACTORS)
% beta_SS (dimensionless) (in COMPUTE_Jtrpn_and_BUFFER_SCALE_FACTORS)
% beta_i (dimensionless) (in COMPUTE_Jtrpn_and_BUFFER_SCALE_FACTORS)
% dHTRPNCa (per_ms) (in COMPUTE_Jtrpn_and_BUFFER_SCALE_FACTORS)
% dLTRPNCa (per_ms) (in COMPUTE_Jtrpn_and_BUFFER_SCALE_FACTORS)
% ECa (mV) (in COMPUTE_REVERSAL_POTENTIALS)
% EK (mV) (in COMPUTE_REVERSAL_POTENTIALS)
% EKs (mV) (in COMPUTE_REVERSAL_POTENTIALS)
% ENa (mV) (in COMPUTE_REVERSAL_POTENTIALS)
% a12 (mM) (a1 in COMPUTE_REVERSAL_POTENTIALS)
% a23 (mM) (a2 in COMPUTE_REVERSAL_POTENTIALS)
% C1H_to_C2H (per_ms) (in IKr)
% C2H_to_C1H (per_ms) (in IKr)
% C2H_to_C3H (per_ms) (in IKr)
% C3H_to_C2H (per_ms) (in IKr)
% C3H_to_IH (per_ms) (in IKr)
% C3H_to_OH (per_ms) (in IKr)
% IH_to_C3H (per_ms) (in IKr)
% IH_to_OH (per_ms) (in IKr)
% OH_to_C3H (per_ms) (in IKr)
% OH_to_IH (per_ms) (in IKr)
% a1_C2_3 (per_ms) (a1_C2 in IKr)
% a1_C3_3 (per_ms) (a1_C3 in IKr)
% a1_I (per_ms) (in IKr)
% a1_O_2 (per_ms) (a1_O in IKr)
% a2_C2_3 (per_ms) (a2_C2 in IKr)
% a2_C3_3 (per_ms) (a2_C3 in IKr)
% a2_I (per_ms) (in IKr)
% a2_O_2 (per_ms) (a2_O in IKr)
% C0ks_C1ks (per_ms) (in IKs)
% C1ks_C0ks (per_ms) (in IKs)
% C1ks_O1ks (per_ms) (in IKs)
% O1ks_C1ks (per_ms) (in IKs)
% O1ks_O2ks (per_ms) (in IKs)
% O2ks_O1ks (per_ms) (in IKs)
% Cf (per_ms) (in INa)
% Cn (per_ms) (in INa)
% Delta1 (per_ms) (in INa)
% DeltaDelta (per_ms) (in INa)
% FoverRT (per_mV) (in INa)
% GammaGamma (per_ms) (in INa)
% KToverH (per_ms) (in INa)
% Of (per_ms) (in INa)
% On (per_ms) (in INa)
% RTNa (joule_per_mole) (in INa)
% RTNaF (mV) (in INa)
% Temp_Scale (dimensionless) (in INa)
% alpha1 (per_ms) (in INa)
% beta1 (per_ms) (in INa)
% epsilon (per_ms) (in INa)
% gamma1 (per_ms) (in INa)
% k1011 (per_ms) (in INa)
% k103 (per_ms) (in INa)
% k109 (per_ms) (in INa)
% k1110 (per_ms) (in INa)
% k1112 (per_ms) (in INa)
% k114 (per_ms) (in INa)
% k12 (per_ms) (in INa)
% k1211 (per_ms) (in INa)
% k1213 (per_ms) (in INa)
% k125 (per_ms) (in INa)
% k1312 (per_ms) (in INa)
% k136 (per_ms) (in INa)
% k18 (per_ms) (in INa)
% k21 (per_ms) (in INa)
% k23 (per_ms) (in INa)
% k29 (per_ms) (in INa)
% k310 (per_ms) (in INa)
% k32 (per_ms) (in INa)
% k34 (per_ms) (in INa)
% k411 (per_ms) (in INa)
% k43 (per_ms) (in INa)
% k45 (per_ms) (in INa)
% k512 (per_ms) (in INa)
% k54 (per_ms) (in INa)
% k56 (per_ms) (in INa)
% k57 (per_ms) (in INa)
% k613 (per_ms) (in INa)
% k65 (per_ms) (in INa)
% k67 (per_ms) (in INa)
% k75 (per_ms) (in INa)
% k76 (per_ms) (in INa)
% k81 (per_ms) (in INa)
% k89 (per_ms) (in INa)
% k910 (per_ms) (in INa)
% k92 (per_ms) (in INa)
% k98 (per_ms) (in INa)
% mu (per_ms) (in INa)
% omega_na (per_ms) (in INa)
% parameter_a (dimensionless) (in INa)
% rho (per_ms) (in INa)
% i_Stim (uA_per_uF) (in I_stimulus)

%-------------------------------------------------------------------------------
% Computation
%-------------------------------------------------------------------------------

% time (ms)

RT_over_F = Rgas*Temp/Faraday;
C = Acap*1.0e-3;
a11 = C/(Vmyo*Faraday);
a21 = C/(2.0*VSS*Faraday);
ENa = RT_over_F*log(Nao/Y(6));
INa = GNa*(Y(64)+Y(65))*(Y(7)-ENa);
INab = GNab*(Y(7)-ENa);
VF_over_RT_2 = Y(7)/RT_over_F;
a1_ncx = exp(eta*VF_over_RT_2)*Y(6)^3.0*Cao;
a2_ncx = exp((eta-1.0)*VF_over_RT_2)*Nao^3.0*Y(4);
a4_ncx = KmCa+Cao;
a3_ncx = 1.0+ksat*exp((eta-1.0)*VF_over_RT_2);
a5_ncx = (KmNa^3.0+Nao^3.0)/5000.0;
INaCa = kNaCa*(a1_ncx-a2_ncx)/(a4_ncx*a3_ncx*a5_ncx);
a1_Na_1 = 1.0+0.1245*exp(-0.1*VF_over_RT_2);
sigma = (exp(Nao/67.3)-1.0)/7.0;
a2_Na = 0.0365*sigma*exp(-1.33*VF_over_RT_2);
fNaK = 1.0/(a1_Na_1+a2_Na);
a1_K_2 = Ko/(Ko+KmKo);
a2_K_2 = 1.0+(KmNai/Y(6))^1.5;
INaK = INaKmax*fNaK*a1_K_2/a2_K_2;
PKv14 = (1.0-Kv43Frac)*KvScale*4.2986e-7;
VF_over_RT_3 = Y(7)/RT_over_F;
VFsq_over_RT_2 = 1000.0*Faraday*VF_over_RT_3;
a1_Na_2 = Y(6)*exp(VF_over_RT_3)-Nao;
a22 = exp(VF_over_RT_3)-1.0;
IKv14_Na = 0.02*PKv14*Y(17)*VFsq_over_RT_2*a1_Na_2/a22;
dY(6, 1) = -(INa+INab+3.0*(INaCa+INaK)+IKv14_Na)*a11;
fKo = sqrt(Ko/4.0);
EK = RT_over_F*log(Ko/Y(5));
IKr = GKr*fKo*Y(50)*(Y(7)-EK);
IKs = GKs*(Y(53)+Y(54))*(Y(7)-EK);
K1_inf = 1.0/(0.94+exp(1.26/RT_over_F*(Y(7)-EK)));
IK1 = GK1*sqrt(Ko/1.0)*K1_inf*(Y(7)-EK);
PK = Pscale*4.574e-7;
PCa = Pscale*2.469e-4;
VF_over_RT_1 = Y(7)/RT_over_F;
VFsq_over_RT_1 = 1000.0*Faraday*VF_over_RT_1;
a1_Ca = 1.0e-3*exp(2.0*VF_over_RT_1)-Cao*0.341;
a2_Ca = exp(2.0*VF_over_RT_1)-1.0;
ICamax = PCa*4.0*VFsq_over_RT_1*a1_Ca/a2_Ca;

if (ICamax >= 0.0)
   Icabar = 0.0;
else
   Icabar = ICamax;
end;

PKprime = PK/(1.0+Icabar/ICahalf);
a1_K_1 = Y(5)*exp(VF_over_RT_1)-Ko;
a2_K_1 = exp(VF_over_RT_1)-1.0;
ICaK = PKprime*Y(38)*Y(39)*VFsq_over_RT_1*a1_K_1/a2_K_1;

if (time <= stim_duration)
   i_Stim = stim_amplitude;
else
   i_Stim = 0.0;
end;

GKv43 = Kv43Frac*KvScale*0.1;
IKv43 = GKv43*Y(27)*(Y(7)-EK);
a1_K_3 = Y(5)*exp(VF_over_RT_3)-Ko;
IKv14_K = PKv14*Y(17)*VFsq_over_RT_2*a1_K_3/a22;
dY(5, 1) = -(IKr+IKs+IK1+ICaK+i_Stim-2.0*INaK+IKv43+IKv14_K)*a11;
beta_i = 1.0/(1.0+CMDNtot*KmCMDN/(Y(4)+KmCMDN)^2.0+EGTAtot*KmEGTA/(Y(4)+KmEGTA)^2.0);
Jxfer = (Y(3)-Y(4))/tauxfer;
fb = (Y(4)/Kfb)^Nfb;
rb = (Y(2)/Krb)^Nrb;
Jup = KSR*(vmaxf*fb-vmaxr*rb)/(1.0+fb+rb);
dLTRPNCa = kltrpn_plus*Y(4)*(1.0-Y(45))-kltrpn_minus*Y(45);
dHTRPNCa = khtrpn_plus*Y(4)*(1.0-Y(44))-khtrpn_minus*Y(44);
Jtrpn = LTRPNtot*dLTRPNCa+HTRPNtot*dHTRPNCa;
ECa = 0.5*RT_over_F*log(Cao/Y(4));
ICab = GCab*(Y(7)-ECa);
IpCa = IpCamax*Y(4)/(KmpCa+Y(4));
dY(4, 1) = beta_i*(Jxfer-Jup-Jtrpn-(ICab-2.0*INaCa+IpCa)*0.5*a11);
beta_SS = 1.0/(1.0+CMDNtot*KmCMDN/(Y(3)+KmCMDN)^2.0+EGTAtot*KmEGTA/(Y(3)+KmEGTA)^2.0);
Jrel = v1*(Y(42)+Y(43))*(Y(1)-Y(3));
ICa = ICamax*Y(39)*Y(38);
dY(3, 1) = beta_SS*(Jrel*VJSR/VSS-Jxfer*Vmyo/VSS-ICa*a21);
beta_JSR = 1.0/(1.0+CSQNtot*KmCSQN/(Y(1)+KmCSQN)^2.0);
Jtr = (Y(2)-Y(1))/tautr;
dY(1, 1) = beta_JSR*(Jtr-Jrel);
dY(2, 1) = Jup*Vmyo/VNSR-Jtr*VJSR/VNSR;
IKv14 = IKv14_K+IKv14_Na;
Ito1 = IKv43+IKv14;
i_tot = INa+ICa+ICaK+IKr+IKs+IK1+INaCa+INaK+Ito1+IpCa+ICab+INab+i_Stim;
dY(7, 1) = -i_tot;
alpha_act14 = alphaa0Kv14*exp(aaKv14*Y(7));
beta_act14 = betaa0Kv14*exp(-baKv14*Y(7));
alpha_inact14 = alphai0Kv14;
beta_inact14 = betai0Kv14;
C0Kv14_to_C1Kv14 = 4.0*alpha_act14;
C1Kv14_to_C2Kv14 = 3.0*alpha_act14;
C2Kv14_to_C3Kv14 = 2.0*alpha_act14;
C3Kv14_to_OKv14 = alpha_act14;
CI0Kv14_to_CI1Kv14 = 4.0*b1Kv14*alpha_act14;
CI1Kv14_to_CI2Kv14 = 3.0*b2Kv14*alpha_act14/b1Kv14;
CI2Kv14_to_CI3Kv14 = 2.0*b3Kv14*alpha_act14/b2Kv14;
CI3Kv14_to_OIKv14 = b4Kv14*alpha_act14/b3Kv14;
C1Kv14_to_C0Kv14 = beta_act14;
C2Kv14_to_C1Kv14 = 2.0*beta_act14;
C3Kv14_to_C2Kv14 = 3.0*beta_act14;
OKv14_to_C3Kv14 = 4.0*beta_act14;
CI1Kv14_to_CI0Kv14 = beta_act14/f1Kv14;
CI2Kv14_to_CI1Kv14 = 2.0*f1Kv14*beta_act14/f2Kv14;
CI3Kv14_to_CI2Kv14 = 3.0*f2Kv14*beta_act14/f3Kv14;
OIKv14_to_CI3Kv14 = 4.0*f3Kv14*beta_act14/f4Kv14;
C0Kv14_to_CI0Kv14 = beta_inact14;
C1Kv14_to_CI1Kv14 = f1Kv14*beta_inact14;
C2Kv14_to_CI2Kv14 = f2Kv14*beta_inact14;
C3Kv14_to_CI3Kv14 = f3Kv14*beta_inact14;
OKv14_to_OIKv14 = f4Kv14*beta_inact14;
CI0Kv14_to_C0Kv14 = alpha_inact14;
CI1Kv14_to_C1Kv14 = alpha_inact14/b1Kv14;
CI2Kv14_to_C2Kv14 = alpha_inact14/b2Kv14;
CI3Kv14_to_C3Kv14 = alpha_inact14/b3Kv14;
OIKv14_to_OKv14 = alpha_inact14/b4Kv14;
a1_C0_1 = (C0Kv14_to_C1Kv14+C0Kv14_to_CI0Kv14)*Y(8);
a2_C0_1 = C1Kv14_to_C0Kv14*Y(9)+CI0Kv14_to_C0Kv14*Y(12);
dY(8, 1) = a2_C0_1-a1_C0_1;
a1_C1_1 = (C1Kv14_to_C2Kv14+C1Kv14_to_C0Kv14+C1Kv14_to_CI1Kv14)*Y(9);
a2_C1_1 = C2Kv14_to_C1Kv14*Y(10)+CI1Kv14_to_C1Kv14*Y(13)+C0Kv14_to_C1Kv14*Y(8);
dY(9, 1) = a2_C1_1-a1_C1_1;
a1_C2_1 = (C2Kv14_to_C3Kv14+C2Kv14_to_C1Kv14+C2Kv14_to_CI2Kv14)*Y(10);
a2_C2_1 = C3Kv14_to_C2Kv14*Y(11)+CI2Kv14_to_C2Kv14*Y(14)+C1Kv14_to_C2Kv14*Y(9);
dY(10, 1) = a2_C2_1-a1_C2_1;
a1_C3_1 = (C3Kv14_to_OKv14+C3Kv14_to_C2Kv14+C3Kv14_to_CI3Kv14)*Y(11);
a2_C3_1 = OKv14_to_C3Kv14*Y(17)+CI3Kv14_to_C3Kv14*Y(15)+C2Kv14_to_C3Kv14*Y(10);
dY(11, 1) = a2_C3_1-a1_C3_1;
a1_O_1 = (OKv14_to_C3Kv14+OKv14_to_OIKv14)*Y(17);
a2_O_1 = C3Kv14_to_OKv14*Y(11)+OIKv14_to_OKv14*Y(16);
dY(17, 1) = a2_O_1-a1_O_1;
a1_CI0 = (CI0Kv14_to_C0Kv14+CI0Kv14_to_CI1Kv14)*Y(12);
a2_CI0 = C0Kv14_to_CI0Kv14*Y(8)+CI1Kv14_to_CI0Kv14*Y(13);
dY(12, 1) = a2_CI0-a1_CI0;
a1_CI1 = (CI1Kv14_to_CI2Kv14+CI1Kv14_to_C1Kv14+CI1Kv14_to_CI0Kv14)*Y(13);
a2_CI1 = CI2Kv14_to_CI1Kv14*Y(14)+C1Kv14_to_CI1Kv14*Y(9)+CI0Kv14_to_CI1Kv14*Y(12);
dY(13, 1) = a2_CI1-a1_CI1;
a1_CI2 = (CI2Kv14_to_CI3Kv14+CI2Kv14_to_C2Kv14+CI2Kv14_to_CI1Kv14)*Y(14);
a2_CI2 = CI3Kv14_to_CI2Kv14*Y(15)+C2Kv14_to_CI2Kv14*Y(10)+CI1Kv14_to_CI2Kv14*Y(13);
dY(14, 1) = a2_CI2-a1_CI2;
a1_CI3 = (CI3Kv14_to_OIKv14+CI3Kv14_to_C3Kv14+CI3Kv14_to_CI2Kv14)*Y(15);
a2_CI3 = OIKv14_to_CI3Kv14*Y(16)+C3Kv14_to_CI3Kv14*Y(11)+CI2Kv14_to_CI3Kv14*Y(14);
dY(15, 1) = a2_CI3-a1_CI3;
a1_OI = (OIKv14_to_OKv14+OIKv14_to_CI3Kv14)*Y(16);
a2_OI = OKv14_to_OIKv14*Y(17)+CI3Kv14_to_OIKv14*Y(15);
dY(16, 1) = a2_OI-a1_OI;
alpha_act43 = alphaa0Kv43*exp(aaKv43*Y(7));
beta_act43 = betaa0Kv43*exp(-baKv43*Y(7));
alpha_inact43 = alphai0Kv43*exp(-aiKv43*Y(7));
beta_inact43 = betai0Kv43*exp(biKv43*Y(7));
C0Kv43_to_C1Kv43 = 4.0*alpha_act43;
C1Kv43_to_C2Kv43 = 3.0*alpha_act43;
C2Kv43_to_C3Kv43 = 2.0*alpha_act43;
C3Kv43_to_OKv43 = alpha_act43;
CI0Kv43_to_CI1Kv43 = 4.0*b1Kv43*alpha_act43;
CI1Kv43_to_CI2Kv43 = 3.0*b2Kv43*alpha_act43/b1Kv43;
CI2Kv43_to_CI3Kv43 = 2.0*b3Kv43*alpha_act43/b2Kv43;
CI3Kv43_to_OIKv43 = b4Kv43*alpha_act43/b3Kv43;
C1Kv43_to_C0Kv43 = beta_act43;
C2Kv43_to_C1Kv43 = 2.0*beta_act43;
C3Kv43_to_C2Kv43 = 3.0*beta_act43;
OKv43_to_C3Kv43 = 4.0*beta_act43;
CI1Kv43_to_CI0Kv43 = beta_act43/f1Kv43;
CI2Kv43_to_CI1Kv43 = 2.0*f1Kv43*beta_act43/f2Kv43;
CI3Kv43_to_CI2Kv43 = 3.0*f2Kv43*beta_act43/f3Kv43;
OIKv43_to_CI3Kv43 = 4.0*f3Kv43*beta_act43/f4Kv43;
C0Kv43_to_CI0Kv43 = beta_inact43;
C1Kv43_to_CI1Kv43 = f1Kv43*beta_inact43;
C2Kv43_to_CI2Kv43 = f2Kv43*beta_inact43;
C3Kv43_to_CI3Kv43 = f3Kv43*beta_inact43;
OKv43_to_OIKv43 = f4Kv43*beta_inact43;
CI0Kv43_to_C0Kv43 = alpha_inact43;
CI1Kv43_to_C1Kv43 = alpha_inact43/b1Kv43;
CI2Kv43_to_C2Kv43 = alpha_inact43/b2Kv43;
CI3Kv43_to_C3Kv43 = alpha_inact43/b3Kv43;
OIKv43_to_OKv43 = alpha_inact43/b4Kv43;
a1_C043 = (C0Kv43_to_C1Kv43+C0Kv43_to_CI0Kv43)*Y(18);
a2_C043 = C1Kv43_to_C0Kv43*Y(19)+CI0Kv43_to_C0Kv43*Y(22);
dY(18, 1) = a2_C043-a1_C043;
a1_C143 = (C1Kv43_to_C2Kv43+C1Kv43_to_C0Kv43+C1Kv43_to_CI1Kv43)*Y(19);
a2_C143 = C2Kv43_to_C1Kv43*Y(20)+CI1Kv43_to_C1Kv43*Y(23)+C0Kv43_to_C1Kv43*Y(18);
dY(19, 1) = a2_C143-a1_C143;
a1_C243 = (C2Kv43_to_C3Kv43+C2Kv43_to_C1Kv43+C2Kv43_to_CI2Kv43)*Y(20);
a2_C243 = C3Kv43_to_C2Kv43*Y(21)+CI2Kv43_to_C2Kv43*Y(24)+C1Kv43_to_C2Kv43*Y(19);
dY(20, 1) = a2_C243-a1_C243;
a1_C343 = (C3Kv43_to_OKv43+C3Kv43_to_C2Kv43+C3Kv43_to_CI3Kv43)*Y(21);
a2_C343 = OKv43_to_C3Kv43*Y(27)+CI3Kv43_to_C3Kv43*Y(25)+C2Kv43_to_C3Kv43*Y(20);
dY(21, 1) = a2_C343-a1_C343;
a1_O43 = (OKv43_to_C3Kv43+OKv43_to_OIKv43)*Y(27);
a2_O43 = C3Kv43_to_OKv43*Y(21)+OIKv43_to_OKv43*Y(26);
dY(27, 1) = a2_O43-a1_O43;
a1_I043 = (CI0Kv43_to_C0Kv43+CI0Kv43_to_CI1Kv43)*Y(22);
a2_I043 = C0Kv43_to_CI0Kv43*Y(18)+CI1Kv43_to_CI0Kv43*Y(23);
dY(22, 1) = a2_I043-a1_I043;
a1_I143 = (CI1Kv43_to_CI2Kv43+CI1Kv43_to_C1Kv43+CI1Kv43_to_CI0Kv43)*Y(23);
a2_I143 = CI2Kv43_to_CI1Kv43*Y(24)+C1Kv43_to_CI1Kv43*Y(19)+CI0Kv43_to_CI1Kv43*Y(22);
dY(23, 1) = a2_I143-a1_I143;
a1_I243 = (CI2Kv43_to_CI3Kv43+CI2Kv43_to_C2Kv43+CI2Kv43_to_CI1Kv43)*Y(24);
a2_I243 = CI3Kv43_to_CI2Kv43*Y(25)+C2Kv43_to_CI2Kv43*Y(20)+CI1Kv43_to_CI2Kv43*Y(23);
dY(24, 1) = a2_I243-a1_I243;
a1_I343 = (CI3Kv43_to_OIKv43+CI3Kv43_to_C3Kv43+CI3Kv43_to_CI2Kv43)*Y(25);
a2_I343 = OIKv43_to_CI3Kv43*Y(26)+C3Kv43_to_CI3Kv43*Y(21)+CI2Kv43_to_CI3Kv43*Y(24);
dY(25, 1) = a2_I343-a1_I343;
a1_OI43 = (OIKv43_to_OKv43+OIKv43_to_CI3Kv43)*Y(26);
a2_OI43 = OKv43_to_OIKv43*Y(27)+CI3Kv43_to_OIKv43*Y(25);
dY(26, 1) = a2_OI43-a1_OI43;
alpha = 4.0*1.2*0.416*exp(0.012*(Y(7)-35.0));
beta = 4.0*0.45*0.049*exp(-0.065*(Y(7)-22.0));
alpha_prime = aL*alpha;
beta_prime = beta/bL;
gamma = 0.6*0.09233*Y(3);
omega = 0.25*0.01;
C0_to_C1 = 4.0*alpha;
C1_to_C2 = 3.0*alpha;
C2_to_C3 = 2.0*alpha;
C3_to_C4 = alpha;
CCa0_to_CCa1 = 4.0*alpha_prime;
CCa1_to_CCa2 = 3.0*alpha_prime;
CCa2_to_CCa3 = 2.0*alpha_prime;
CCa3_to_CCa4 = alpha_prime;
C1_to_C0 = beta;
C2_to_C1 = 2.0*beta;
C3_to_C2 = 3.0*beta;
C4_to_C3 = 4.0*beta;
CCa1_to_CCa0 = beta_prime;
CCa2_to_CCa1 = 2.0*beta_prime;
CCa3_to_CCa2 = 3.0*beta_prime;
CCa4_to_CCa3 = 4.0*beta_prime;
C0_to_CCa0 = gamma;
C1_to_CCa1 = aL*C0_to_CCa0;
C2_to_CCa2 = aL*C1_to_CCa1;
C3_to_CCa3 = aL*C2_to_CCa2;
C4_to_CCa4 = aL*C3_to_CCa3;
CCa0_to_C0 = omega;
CCa1_to_C1 = CCa0_to_C0/bL;
CCa2_to_C2 = CCa1_to_C1/bL;
CCa3_to_C3 = CCa2_to_C2/bL;
CCa4_to_C4 = CCa3_to_C3/bL;
a1_C0_2 = (C0_to_C1+C0_to_CCa0)*Y(28);
a2_C0_2 = C1_to_C0*Y(29)+CCa0_to_C0*Y(33);
dY(28, 1) = a2_C0_2-a1_C0_2;
a1_C1_2 = (C1_to_C0+C1_to_C2+C1_to_CCa1)*Y(29);
a2_C1_2 = C0_to_C1*Y(28)+C2_to_C1*Y(30)+CCa1_to_C1*Y(34);
dY(29, 1) = a2_C1_2-a1_C1_2;
a1_C2_2 = (C2_to_C1+C2_to_C3+C2_to_CCa2)*Y(30);
a2_C2_2 = C1_to_C2*Y(29)+C3_to_C2*Y(31)+CCa2_to_C2*Y(35);
dY(30, 1) = a2_C2_2-a1_C2_2;
a1_C3_2 = (C3_to_C2+C3_to_C4+C3_to_CCa3)*Y(31);
a2_C3_2 = C2_to_C3*Y(30)+C4_to_C3*Y(32)+CCa3_to_C3*Y(36);
dY(31, 1) = a2_C3_2-a1_C3_2;
a1_C4 = (C4_to_C3+fL+C4_to_CCa4)*Y(32);
a2_C4 = C3_to_C4*Y(31)+gL*Y(38)+CCa4_to_C4*Y(37);
dY(32, 1) = a2_C4-a1_C4;
dY(38, 1) = fL*Y(32)-gL*Y(38);
a1_Ca0 = (CCa0_to_CCa1+CCa0_to_C0)*Y(33);
a2_Ca0 = CCa1_to_CCa0*Y(34)+C0_to_CCa0*Y(28);
dY(33, 1) = a2_Ca0-a1_Ca0;
a1_Ca1 = (CCa1_to_CCa0+CCa1_to_CCa2+CCa1_to_C1)*Y(34);
a2_Ca1 = CCa0_to_CCa1*Y(33)+CCa2_to_CCa1*Y(35)+C1_to_CCa1*Y(29);
dY(34, 1) = a2_Ca1-a1_Ca1;
a1_Ca2 = (CCa2_to_CCa1+CCa2_to_CCa3+CCa2_to_C2)*Y(35);
a2_Ca2 = CCa1_to_CCa2*Y(34)+CCa3_to_CCa2*Y(36)+C2_to_CCa2*Y(30);
dY(35, 1) = a2_Ca2-a1_Ca2;
a1_Ca3 = (CCa3_to_CCa2+CCa3_to_CCa4+CCa3_to_C3)*Y(36);
a2_Ca3 = CCa2_to_CCa3*Y(35)+CCa4_to_CCa3*Y(37)+C3_to_CCa3*Y(31);
dY(36, 1) = a2_Ca3-a1_Ca3;
a1_Ca4 = (CCa4_to_CCa3+CCa4_to_C4)*Y(37);
a2_Ca4 = CCa3_to_CCa4*Y(36)+C4_to_CCa4*Y(32);
dY(37, 1) = a2_Ca4-a1_Ca4;
a1_Cainf = 0.82;
yCa_inf = a1_Cainf/(1.0+exp((Y(7)+28.5)/7.8))+1.0-a1_Cainf;
tau_yCa = 1.0/(0.00336336209452/(0.5+exp(Y(7)/-5.53899874036055))+0.00779046570737*exp(Y(7)/-49.51039631160386));
dY(39, 1) = (yCa_inf-Y(39))/tau_yCa;
dC1_RyR = -kaplus*(Y(3)*1000.0)^ncoop*Y(40)+kaminus*Y(42);
dO2_RyR = kbplus*(Y(3)*1000.0)^mcoop*Y(42)-kbminus*Y(43);
dC2_RyR = kcplus*Y(42)-kcminus*Y(41);
dO1_RyR = -(dC1_RyR+dO2_RyR+dC2_RyR);
dY(40, 1) = dC1_RyR;
dY(43, 1) = dO2_RyR;
dY(41, 1) = dC2_RyR;
dY(42, 1) = dO1_RyR;
dY(45, 1) = dLTRPNCa;
dY(44, 1) = dHTRPNCa;
a12 = Ko+0.01833*Nao;
a23 = Y(5)+0.01833*Y(6);
EKs = RT_over_F*log(a12/a23);
C2H_to_C3H = T_Const_HERG*0.02608362043337;
C3H_to_C2H = T_Const_HERG*0.14832978132145;
C1H_to_C2H = T_Const_HERG*A0_HERG*exp(B0_HERG*Y(7));
C2H_to_C1H = T_Const_HERG*A1_HERG*exp(B1_HERG*Y(7));
C3H_to_OH = T_Const_HERG*A2_HERG*exp(B2_HERG*Y(7));
OH_to_C3H = T_Const_HERG*A3_HERG*exp(B3_HERG*Y(7));
OH_to_IH = T_Const_HERG*A4_HERG*exp(B4_HERG*Y(7));
IH_to_OH = T_Const_HERG*A5_HERG*exp(B5_HERG*Y(7));
C3H_to_IH = T_Const_HERG*A6_HERG*exp(B6_HERG*Y(7));
IH_to_C3H = OH_to_C3H*IH_to_OH*C3H_to_IH/(C3H_to_OH*OH_to_IH);
dY(46, 1) = C2H_to_C1H*Y(47)-C1H_to_C2H*Y(46);
a1_C2_3 = C1H_to_C2H*Y(46)+C3H_to_C2H*Y(48);
a2_C2_3 = (C2H_to_C1H+C2H_to_C3H)*Y(47);
dY(47, 1) = a1_C2_3-a2_C2_3;
a1_C3_3 = C2H_to_C3H*Y(47)+OH_to_C3H*Y(50)+IH_to_C3H*Y(49);
a2_C3_3 = (C3H_to_IH+C3H_to_OH+C3H_to_C2H)*Y(48);
dY(48, 1) = a1_C3_3-a2_C3_3;
a1_O_2 = C3H_to_OH*Y(48)+IH_to_OH*Y(49);
a2_O_2 = (OH_to_C3H+OH_to_IH)*Y(50);
dY(50, 1) = a1_O_2-a2_O_2;
a1_I = C3H_to_IH*Y(48)+OH_to_IH*Y(50);
a2_I = (IH_to_C3H+IH_to_OH)*Y(49);
dY(49, 1) = a1_I-a2_I;
C0ks_C1ks = 0.00795600798004;
C1ks_O1ks = 0.03966720676071;
O1ks_O2ks = 0.00767254363063*exp(0.08662945914655*Y(7));
O1ks_C1ks = 0.00700806628929*exp(-0.14999754700285*Y(7));
O2ks_O1ks = 0.00379737998368*exp(-0.01425668126881*Y(7));
C1ks_C0ks = 0.2162557589585*exp(-0.00001889123021*Y(7));
dY(51, 1) = -C0ks_C1ks*Y(51)+C1ks_C0ks*Y(52);
dY(52, 1) = C0ks_C1ks*Y(51)-(C1ks_C0ks+C1ks_O1ks)*Y(52)+O1ks_C1ks*Y(53);
dY(53, 1) = C1ks_O1ks*Y(52)-(O1ks_C1ks+O1ks_O2ks)*Y(53)+O2ks_O1ks*Y(54);
dY(54, 1) = O1ks_O2ks*Y(53)-O2ks_O1ks*Y(54);
FoverRT = 1.0/RT_over_F;
KToverH = 1.381e-23*TNa/6.626e-31;
RTNa = Rgas*TNa;
RTNaF = Rgas*TNa/Faraday;
Temp_Scale = 1.38862291252871;
alpha1 = Temp_Scale*KToverH*exp(-114007.462700232/RTNa+224.114/Rgas+0.286374268596235*Y(7)/RTNaF);
beta1 = Temp_Scale*KToverH*exp(-272470.273489681/RTNa+708.146/Rgas+-2.28528417586424*Y(7)/RTNaF);
gamma1 = Temp_Scale*KToverH*exp(-196336.575735923/RTNa+529.952/Rgas+2.78084918596045*Y(7)/RTNaF);
Delta1 = Temp_Scale*KToverH*exp(-133689.9304091/RTNa+229.205/Rgas+-1.55804214553883*Y(7)/RTNaF);
On = Temp_Scale*KToverH*exp(-62123.0784380481/RTNa+39.295/Rgas+0.288816042743232*Y(7)/RTNaF);
Of = Temp_Scale*KToverH*exp(-97657.8497137015/RTNa+1.51/Rgas+0.0684861993100685*Y(7)/RTNaF);
GammaGamma = Temp_Scale*KToverH*exp(116431.142142348/RTNa+-578.317/Rgas+0.764126011745707*Y(7)/RTNaF);
DeltaDelta = Temp_Scale*KToverH*exp(-55700.6624658307/RTNa+-130.639/Rgas+-3.64981672927078*Y(7)/RTNaF);
epsilon = Temp_Scale*KToverH*exp(-85800.3675578326/RTNa+70.078/Rgas);
omega_na = Temp_Scale*KToverH*exp(-121955.166154864/RTNa+225.175/Rgas);
rho = Temp_Scale*KToverH*exp(-147813.990005035/RTNa+338.915/Rgas+2.1360043702126*Y(7)/RTNaF);
mu = Temp_Scale*KToverH*exp(-121322.143275242/RTNa+193.265/Rgas+-1.74290267020903*Y(7)/RTNaF);
Cn = Temp_Scale*KToverH*exp(-287913.446530953/RTNa+786.217/Rgas);
Cf = Temp_Scale*KToverH*exp(-59565.2236284584/RTNa+0.00711/Rgas);
parameter_a = 1.40042625477401;
k12 = 4.0*alpha1;
k23 = 3.0*alpha1;
k34 = 2.0*alpha1;
k45 = alpha1;
k56 = gamma1;
k67 = epsilon;
k89 = k12*parameter_a;
k910 = k23*parameter_a;
k1011 = k34*parameter_a;
k1112 = k45*parameter_a;
k1213 = GammaGamma;
k57 = rho;
k21 = beta1;
k32 = 2.0*beta1;
k43 = 3.0*beta1;
k54 = 4.0*beta1;
k65 = Delta1;
k76 = omega_na;
k98 = k21/parameter_a;
k109 = k32/parameter_a;
k1110 = k43/parameter_a;
k1211 = k54/parameter_a;
k1312 = DeltaDelta;
k75 = mu;
k81 = Cf;
k92 = k81/parameter_a;
k103 = k92/parameter_a;
k114 = k103/parameter_a;
k125 = k114/parameter_a;
k136 = Of;
k18 = Cn;
k29 = k18*parameter_a;
k310 = k29*parameter_a;
k411 = k310*parameter_a;
k512 = k411*parameter_a;
k613 = On;
dY(55, 1) = -(k18+k12)*Y(55)+k21*Y(60)+k81*Y(66);
dY(60, 1) = k12*Y(55)-(k21+k23+k29)*Y(60)+k32*Y(61)+k92*Y(67);
dY(61, 1) = k23*Y(60)-(k32+k34+k310)*Y(61)+k43*Y(62)+k103*Y(56);
dY(62, 1) = k34*Y(61)-(k43+k45+k411)*Y(62)+k54*Y(63)+k114*Y(57);
dY(63, 1) = k45*Y(62)-(k54+k56+k57+k512)*Y(63)+k65*Y(64)+k75*Y(65)+k125*Y(58);
dY(64, 1) = k56*Y(63)-(k65+k67+k613)*Y(64)+k76*Y(65)+k136*Y(59);
dY(65, 1) = k57*Y(63)+k67*Y(64)-(k75+k76)*Y(65);
dY(66, 1) = k18*Y(55)-(k81+k89)*Y(66)+k98*Y(67);
dY(67, 1) = k29*Y(60)+k89*Y(66)-(k98+k92+k910)*Y(67)+k109*Y(56);
dY(56, 1) = k310*Y(61)+k910*Y(67)-(k1011+k103+k109)*Y(56)+k1110*Y(57);
dY(57, 1) = k411*Y(62)+k1011*Y(56)-(k1110+k114+k1112)*Y(57)+k1211*Y(58);
dY(58, 1) = k512*Y(63)+k1112*Y(57)-(k1211+k125+k1213)*Y(58)+k1312*Y(59);
dY(59, 1) = k613*Y(64)+k1213*Y(58)-(k1312+k136)*Y(59);

CompVar = [C RT_over_F a11 a21 i_tot C0Kv14_to_C1Kv14 C0Kv14_to_CI0Kv14 C1Kv14_to_C0Kv14 C1Kv14_to_C2Kv14 C1Kv14_to_CI1Kv14 C2Kv14_to_C1Kv14 C2Kv14_to_C3Kv14 C2Kv14_to_CI2Kv14 C3Kv14_to_C2Kv14 C3Kv14_to_CI3Kv14 C3Kv14_to_OKv14 CI0Kv14_to_C0Kv14 CI0Kv14_to_CI1Kv14 CI1Kv14_to_C1Kv14 CI1Kv14_to_CI0Kv14 CI1Kv14_to_CI2Kv14 CI2Kv14_to_C2Kv14 CI2Kv14_to_CI1Kv14 CI2Kv14_to_CI3Kv14 CI3Kv14_to_C3Kv14 CI3Kv14_to_CI2Kv14 CI3Kv14_to_OIKv14 OIKv14_to_CI3Kv14 OIKv14_to_OKv14 OKv14_to_C3Kv14 OKv14_to_OIKv14 a1_C0_1 a1_C1_1 a1_C2_1 a1_C3_1 a1_CI0 a1_CI1 a1_CI2 a1_CI3 a1_O_1 a1_OI a2_C0_1 a2_C1_1 a2_C2_1 a2_C3_1 a2_CI0 a2_CI1 a2_CI2 a2_CI3 a2_O_1 a2_OI alpha_act14 alpha_inact14 beta_act14 beta_inact14 C0Kv43_to_C1Kv43 C0Kv43_to_CI0Kv43 C1Kv43_to_C0Kv43 C1Kv43_to_C2Kv43 C1Kv43_to_CI1Kv43 C2Kv43_to_C1Kv43 C2Kv43_to_C3Kv43 C2Kv43_to_CI2Kv43 C3Kv43_to_C2Kv43 C3Kv43_to_CI3Kv43 C3Kv43_to_OKv43 CI0Kv43_to_C0Kv43 CI0Kv43_to_CI1Kv43 CI1Kv43_to_C1Kv43 CI1Kv43_to_CI0Kv43 CI1Kv43_to_CI2Kv43 CI2Kv43_to_C2Kv43 CI2Kv43_to_CI1Kv43 CI2Kv43_to_CI3Kv43 CI3Kv43_to_C3Kv43 CI3Kv43_to_CI2Kv43 CI3Kv43_to_OIKv43 OIKv43_to_CI3Kv43 OIKv43_to_OKv43 OKv43_to_C3Kv43 OKv43_to_OIKv43 a1_C043 a1_C143 a1_C243 a1_C343 a1_I043 a1_I143 a1_I243 a1_I343 a1_O43 a1_OI43 a2_C043 a2_C143 a2_C243 a2_C343 a2_I043 a2_I143 a2_I243 a2_I343 a2_O43 a2_OI43 alpha_act43 alpha_inact43 beta_act43 beta_inact43 C0_to_C1 C0_to_CCa0 C1_to_C0 C1_to_C2 C1_to_CCa1 C2_to_C1 C2_to_C3 C2_to_CCa2 C3_to_C2 C3_to_C4 C3_to_CCa3 C4_to_C3 C4_to_CCa4 CCa0_to_C0 CCa0_to_CCa1 CCa1_to_C1 CCa1_to_CCa0 CCa1_to_CCa2 CCa2_to_C2 CCa2_to_CCa1 CCa2_to_CCa3 CCa3_to_C3 CCa3_to_CCa2 CCa3_to_CCa4 CCa4_to_C4 CCa4_to_CCa3 a1_C0_2 a1_C1_2 a1_C2_2 a1_C3_2 a1_C4 a1_Ca0 a1_Ca1 a1_Ca2 a1_Ca3 a1_Ca4 a1_Cainf a2_C0_2 a2_C1_2 a2_C2_2 a2_C3_2 a2_C4 a2_Ca0 a2_Ca1 a2_Ca2 a2_Ca3 a2_Ca4 alpha alpha_prime beta beta_prime gamma omega tau_yCa yCa_inf dC1_RyR dC2_RyR dO1_RyR dO2_RyR ICa ICaK ICamax Icabar PCa PK PKprime VF_over_RT_1 VFsq_over_RT_1 a1_Ca a1_K_1 a2_Ca a2_K_1 Jrel Jtr Jup Jxfer fb rb ICab INaCa INaK IpCa VF_over_RT_2 a1_K_2 a1_Na_1 a1_ncx a2_K_2 a2_Na a2_ncx a3_ncx a4_ncx a5_ncx fNaK sigma GKv43 IK1 IKr IKs IKv14 IKv14_K IKv14_Na IKv43 INa INab Ito1 K1_inf PKv14 VF_over_RT_3 VFsq_over_RT_2 a1_K_3 a1_Na_2 a22 fKo Jtrpn beta_JSR beta_SS beta_i dHTRPNCa dLTRPNCa ECa EK EKs ENa a12 a23 C1H_to_C2H C2H_to_C1H C2H_to_C3H C3H_to_C2H C3H_to_IH C3H_to_OH IH_to_C3H IH_to_OH OH_to_C3H OH_to_IH a1_C2_3 a1_C3_3 a1_I a1_O_2 a2_C2_3 a2_C3_3 a2_I a2_O_2 C0ks_C1ks C1ks_C0ks C1ks_O1ks O1ks_C1ks O1ks_O2ks O2ks_O1ks Cf Cn Delta1 DeltaDelta FoverRT GammaGamma KToverH Of On RTNa RTNaF Temp_Scale alpha1 beta1 epsilon gamma1 k1011 k103 k109 k1110 k1112 k114 k12 k1211 k1213 k125 k1312 k136 k18 k21 k23 k29 k310 k32 k34 k411 k43 k45 k512 k54 k56 k57 k613 k65 k67 k75 k76 k81 k89 k910 k92 k98 mu omega_na parameter_a rho i_Stim ];

%===============================================================================
% End of file
%===============================================================================
