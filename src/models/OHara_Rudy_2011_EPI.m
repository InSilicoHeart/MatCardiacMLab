%===============================================================================
% CellML file:   C:\Users\alu.00000\Dropbox\UniZar DropBox\Doctorado\CellML\Ohara_Rudy_2011_EPI.cellml
% CellML model:  MyModel1
% Date and time: 10/07/2013 at 9:59:20
%-------------------------------------------------------------------------------
% Conversion from CellML 1.0 to MATLAB (init) was done using COR (0.9.31.1409)
%    Copyright 2002-2013 Dr Alan Garny
%    http://cor.physiol.ox.ac.uk/ - cor@physiol.ox.ac.uk
%-------------------------------------------------------------------------------
% http://www.cellml.org/
%===============================================================================

function [dY, CompVar] = OHara_Rudy_2011_EPI(time, Y, Constants, Values)

%-------------------------------------------------------------------------------
% Initial conditions
%-------------------------------------------------------------------------------

% Y = [0.0, 0.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 0.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 1.0, 1.0e-4, 1.2, 1.2, 1.0e-4, 145.0, 145.0, 7.0, 7.0, -87.0, 0.0, 0.0];

% YNames = {'CaMKt', 'd', 'fcaf', 'fcafp', 'fcas', 'ff', 'ffp', 'fs', 'jca', 'nca', 'xk1', 'xrf', 'xrs', 'xs1', 'xs2', 'hL', 'hLp', 'mL', 'hf', 'hs', 'hsp', 'j', 'jp', 'm', 'a', 'ap', 'iF', 'iFp', 'iS', 'iSp', 'cai', 'cajsr', 'cansr', 'cass', 'ki', 'kss', 'nai', 'nass', 'v', 'Jrelnp', 'Jrelp'};
% YUnits = {'millimolar', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'dimensionless', 'millimolar', 'millimolar', 'millimolar', 'millimolar', 'millimolar', 'millimolar', 'millimolar', 'millimolar', 'millivolt', 'millimolar_per_millisecond', 'millimolar_per_millisecond'};
% YComponents = {'CaMK', 'ICaL', 'ICaL', 'ICaL', 'ICaL', 'ICaL', 'ICaL', 'ICaL', 'ICaL', 'ICaL', 'IK1', 'IKr', 'IKr', 'IKs', 'IKs', 'INaL', 'INaL', 'INaL', 'INa', 'INa', 'INa', 'INa', 'INa', 'INa', 'Ito', 'Ito', 'Ito', 'Ito', 'Ito', 'Ito', 'intracellular_ions', 'intracellular_ions', 'intracellular_ions', 'intracellular_ions', 'intracellular_ions', 'intracellular_ions', 'intracellular_ions', 'intracellular_ions', 'membrane', 'ryr', 'ryr'};

%-------------------------------------------------------------------------------
% State variables
%-------------------------------------------------------------------------------

% 1: CaMKt (millimolar) (in CaMK)
% 2: d (dimensionless) (in ICaL)
% 3: fcaf (dimensionless) (in ICaL)
% 4: fcafp (dimensionless) (in ICaL)
% 5: fcas (dimensionless) (in ICaL)
% 6: ff (dimensionless) (in ICaL)
% 7: ffp (dimensionless) (in ICaL)
% 8: fs (dimensionless) (in ICaL)
% 9: jca (dimensionless) (in ICaL)
% 10: nca (dimensionless) (in ICaL)
% 11: xk1 (dimensionless) (in IK1)
% 12: xrf (dimensionless) (in IKr)
% 13: xrs (dimensionless) (in IKr)
% 14: xs1 (dimensionless) (in IKs)
% 15: xs2 (dimensionless) (in IKs)
% 16: hL (dimensionless) (in INaL)
% 17: hLp (dimensionless) (in INaL)
% 18: mL (dimensionless) (in INaL)
% 19: hf (dimensionless) (in INa)
% 20: hs (dimensionless) (in INa)
% 21: hsp (dimensionless) (in INa)
% 22: j (dimensionless) (in INa)
% 23: jp (dimensionless) (in INa)
% 24: m (dimensionless) (in INa)
% 25: a (dimensionless) (in Ito)
% 26: ap (dimensionless) (in Ito)
% 27: iF (dimensionless) (in Ito)
% 28: iFp (dimensionless) (in Ito)
% 29: iS (dimensionless) (in Ito)
% 30: iSp (dimensionless) (in Ito)
% 31: cai (millimolar) (in intracellular_ions)
% 32: cajsr (millimolar) (in intracellular_ions)
% 33: cansr (millimolar) (in intracellular_ions)
% 34: cass (millimolar) (in intracellular_ions)
% 35: ki (millimolar) (in intracellular_ions)
% 36: kss (millimolar) (in intracellular_ions)
% 37: nai (millimolar) (in intracellular_ions)
% 38: nass (millimolar) (in intracellular_ions)
% 39: v (millivolt) (in membrane)
% 40: Jrelnp (millimolar_per_millisecond) (in ryr)
% 41: Jrelp (millimolar_per_millisecond) (in ryr)

%-------------------------------------------------------------------------------
% Constants
%-------------------------------------------------------------------------------

CaMKo = 0.05;   % dimensionless (in CaMK)
KmCaM = 0.0015;   % millimolar (in CaMK)
KmCaMK = 0.15;   % millimolar (in CaMK)
aCaMK = 0.05;   % per_millimolar_per_millisecond (in CaMK)
bCaMK = 0.00068;   % per_millisecond (in CaMK)
Kmn = 0.002;   % millimolar (in ICaL)
PCa_b = 0.0001;   % dimensionless (in ICaL)
k2n = 1000.0;   % per_millisecond (in ICaL)
PCab = 2.5e-8;   % litre_per_farad_millisecond (in ICab)
GK1_b = 0.1908;   % milliS_per_microF (in IK1)
GKb_b = 0.003;   % milliS_per_microF (in IKb)
GKr_b = 0.046;   % milliS_per_microF (in IKr)
GKs_b = 0.0034;   % milliS_per_microF (in IKs)
Gncx_b = 0.0008;   % milliS_per_microF (in INaCa_i)
KmCaAct = 150.0e-6;   % millimolar (in INaCa_i)
kasymm = 12.5;   % dimensionless (in INaCa_i)
kcaoff = 5.0e3;   % dimensionless (in INaCa_i)
kcaon = 1.5e6;   % per_millimolar (in INaCa_i)
kna1 = 15.0;   % millimolar (in INaCa_i)
kna2 = 5.0;   % millimolar (in INaCa_i)
kna3 = 88.12;   % millimolar (in INaCa_i)
qca = 0.167;   % dimensionless (in INaCa_i)
qna = 0.5224;   % dimensionless (in INaCa_i)
wca = 6.0e4;   % dimensionless (in INaCa_i)
wna = 6.0e4;   % dimensionless (in INaCa_i)
wnaca = 5.0e3;   % dimensionless (in INaCa_i)
H = 1.0e-7;   % millimolar (in INaK)
Khp = 1.698e-7;   % millimolar (in INaK)
Kki = 0.5;   % millimolar (in INaK)
Kko = 0.3582;   % millimolar (in INaK)
Kmgatp = 1.698e-7;   % millimolar (in INaK)
Knai0 = 9.073;   % millimolar (in INaK)
Knao0 = 27.78;   % millimolar (in INaK)
Knap = 224.0;   % millimolar (in INaK)
Kxkur = 292.0;   % millimolar (in INaK)
MgADP = 0.05;   % millimolar (in INaK)
MgATP = 9.8;   % millimolar (in INaK)
Pnak_b = 30.0;   % milliS_per_microF (in INaK)
delta = -0.155;   % dimensionless (in INaK)
eP = 4.2;   % dimensionless (in INaK)
k1m = 182.4;   % per_millimolar (in INaK)
k1p = 949.5;   % dimensionless (in INaK)
k2m = 39.4;   % dimensionless (in INaK)
k2p = 687.2;   % dimensionless (in INaK)
k3m = 79300.0;   % per_millimolar (in INaK)
k3p = 1899.0;   % dimensionless (in INaK)
k4m = 40.0;   % dimensionless (in INaK)
k4p = 639.0;   % dimensionless (in INaK)
GNaL_b = 0.0075;   % milliS_per_microF (in INaL)
thL = 200.0;   % millisecond (in INaL)
PNab = 3.75e-10;   % litre_per_farad_millisecond (in INab)
Ahf = 0.99;   % dimensionless (in INa)
GNa = 75.0;   % milliS_per_microF (in INa)
hssV1 = 82.9;   % millivolt (in INa)
hssV2 = 6.086;   % millivolt (in INa)
mssV1 = 39.57;   % millivolt (in INa)
mssV2 = 9.871;   % millivolt (in INa)
mtD1 = 6.765;   % dimensionless (in INa)
mtD2 = 8.552;   % dimensionless (in INa)
mtV1 = 11.64;   % millivolt (in INa)
mtV2 = 34.77;   % millivolt (in INa)
mtV3 = 77.42;   % millivolt (in INa)
mtV4 = 5.955;   % millivolt (in INa)
GpCa = 0.0005;   % microA_per_microF (in IpCa)
KmCap = 0.0005;   % millimolar (in IpCa)
Gto_b = 0.02;   % milliS_per_microF (in Ito)
L = 0.01;   % centimeter (in cell_geometry)
rad = 0.0011;   % centimeter (in cell_geometry)
cao = 1.8;   % millimolar (in extracellular)
ko = 5.4;   % millimolar (in extracellular)
nao = 140.0;   % millimolar (in extracellular)
BSLmax = 1.124;   % millimolar (in intracellular_ions)
BSRmax = 0.047;   % millimolar (in intracellular_ions)
KmBSL = 0.0087;   % millimolar (in intracellular_ions)
KmBSR = 0.00087;   % millimolar (in intracellular_ions)
cm = 1.0;   % microF_per_centimeter_squared (in intracellular_ions)
cmdnmax_b = 0.05;   % millimolar (in intracellular_ions)
csqnmax = 10.0;   % millimolar (in intracellular_ions)
kmcmdn = 0.00238;   % millimolar (in intracellular_ions)
kmcsqn = 0.8;   % millimolar (in intracellular_ions)
kmtrpn = 0.0005;   % millimolar (in intracellular_ions)
trpnmax = 0.07;   % millimolar (in intracellular_ions)
amp = -60.8;   % microA_per_microF (in membrane)
duration = 1;   % millisecond (in membrane)
F = 96485.0;   % coulomb_per_mole (in physical_constants)
R = 8314.0;   % joule_per_kilomole_kelvin (in physical_constants)
T = 310.0;   % kelvin (in physical_constants)
zca = 2.0;   % dimensionless (in physical_constants)
zk = 1.0;   % dimensionless (in physical_constants)
zna = 1.0;   % dimensionless (in physical_constants)
PKNa = 0.01833;   % dimensionless (in reversal_potentials)
bt = 4.75;   % millisecond (in ryr)

reasign(Constants, Values)

%-------------------------------------------------------------------------------
% Computed variables
%-------------------------------------------------------------------------------

% CaMKa (millimolar) (in CaMK)
% CaMKb (millimolar) (in CaMK)
% Afcaf (dimensionless) (in ICaL)
% Afcas (dimensionless) (in ICaL)
% Aff (dimensionless) (in ICaL)
% Afs (dimensionless) (in ICaL)
% ICaK (microA_per_microF) (in ICaL)
% ICaL (microA_per_microF) (in ICaL)
% ICaNa (microA_per_microF) (in ICaL)
% PCa (dimensionless) (in ICaL)
% PCaK (dimensionless) (in ICaL)
% PCaKp (dimensionless) (in ICaL)
% PCaNa (dimensionless) (in ICaL)
% PCaNap (dimensionless) (in ICaL)
% PCap (dimensionless) (in ICaL)
% PhiCaK (microA_per_microF) (in ICaL)
% PhiCaL (microA_per_microF) (in ICaL)
% PhiCaNa (microA_per_microF) (in ICaL)
% anca (dimensionless) (in ICaL)
% dss (dimensionless) (in ICaL)
% f (dimensionless) (in ICaL)
% fICaLp (dimensionless) (in ICaL)
% fca (dimensionless) (in ICaL)
% fcap (dimensionless) (in ICaL)
% fcass (dimensionless) (in ICaL)
% fp (dimensionless) (in ICaL)
% fss (dimensionless) (in ICaL)
% km2n (per_millisecond) (in ICaL)
% td (millisecond) (in ICaL)
% tfcaf (millisecond) (in ICaL)
% tfcafp (millisecond) (in ICaL)
% tfcas (millisecond) (in ICaL)
% tff (millisecond) (in ICaL)
% tffp (millisecond) (in ICaL)
% tfs (millisecond) (in ICaL)
% tjca (millisecond) (in ICaL)
% ICab (microA_per_microF) (in ICab)
% GK1 (milliS_per_microF) (in IK1)
% IK1 (microA_per_microF) (in IK1)
% rk1 (dimensionless) (in IK1)
% txk1 (millisecond) (in IK1)
% xk1ss (dimensionless) (in IK1)
% GKb (milliS_per_microF) (in IKb)
% IKb (microA_per_microF) (in IKb)
% xkb (dimensionless) (in IKb)
% Axrf (dimensionless) (in IKr)
% Axrs (dimensionless) (in IKr)
% GKr (milliS_per_microF) (in IKr)
% IKr (microA_per_microF) (in IKr)
% rkr (dimensionless) (in IKr)
% txrf (millisecond) (in IKr)
% txrs (millisecond) (in IKr)
% xr (dimensionless) (in IKr)
% xrss (dimensionless) (in IKr)
% GKs (milliS_per_microF) (in IKs)
% IKs (microA_per_microF) (in IKs)
% KsCa (dimensionless) (in IKs)
% txs1 (millisecond) (in IKs)
% txs2 (millisecond) (in IKs)
% xs1ss (dimensionless) (in IKs)
% xs2ss (dimensionless) (in IKs)
% E1_i (dimensionless) (in INaCa_i)
% E1_ss (dimensionless) (in INaCa_i)
% E2_i (dimensionless) (in INaCa_i)
% E2_ss (dimensionless) (in INaCa_i)
% E3_i (dimensionless) (in INaCa_i)
% E3_ss (dimensionless) (in INaCa_i)
% E4_i (dimensionless) (in INaCa_i)
% E4_ss (dimensionless) (in INaCa_i)
% Gncx (milliS_per_microF) (in INaCa_i)
% INaCa_i (microA_per_microF) (in INaCa_i)
% INaCa_ss (microA_per_microF) (in INaCa_i)
% JncxCa_i (millimolar_per_millisecond) (in INaCa_i)
% JncxCa_ss (millimolar_per_millisecond) (in INaCa_i)
% JncxNa_i (millimolar_per_millisecond) (in INaCa_i)
% JncxNa_ss (millimolar_per_millisecond) (in INaCa_i)
% allo_i (dimensionless) (in INaCa_i)
% allo_ss (dimensionless) (in INaCa_i)
% h10_i (dimensionless) (in INaCa_i)
% h10_ss (dimensionless) (in INaCa_i)
% h11_i (dimensionless) (in INaCa_i)
% h11_ss (dimensionless) (in INaCa_i)
% h12_i (dimensionless) (in INaCa_i)
% h12_ss (dimensionless) (in INaCa_i)
% h1_i (dimensionless) (in INaCa_i)
% h1_ss (dimensionless) (in INaCa_i)
% h2_i (dimensionless) (in INaCa_i)
% h2_ss (dimensionless) (in INaCa_i)
% h3_i (dimensionless) (in INaCa_i)
% h3_ss (dimensionless) (in INaCa_i)
% h4_i (dimensionless) (in INaCa_i)
% h4_ss (dimensionless) (in INaCa_i)
% h5_i (dimensionless) (in INaCa_i)
% h5_ss (dimensionless) (in INaCa_i)
% h6_i (dimensionless) (in INaCa_i)
% h6_ss (dimensionless) (in INaCa_i)
% h7_i (dimensionless) (in INaCa_i)
% h7_ss (dimensionless) (in INaCa_i)
% h8_i (dimensionless) (in INaCa_i)
% h8_ss (dimensionless) (in INaCa_i)
% h9_i (dimensionless) (in INaCa_i)
% h9_ss (dimensionless) (in INaCa_i)
% hca (dimensionless) (in INaCa_i)
% hna (dimensionless) (in INaCa_i)
% k1_i (dimensionless) (in INaCa_i)
% k1_ss (dimensionless) (in INaCa_i)
% k2_i (dimensionless) (in INaCa_i)
% k2_ss (dimensionless) (in INaCa_i)
% k3_i (dimensionless) (in INaCa_i)
% k3_ss (dimensionless) (in INaCa_i)
% k3p_i (dimensionless) (in INaCa_i)
% k3p_ss (dimensionless) (in INaCa_i)
% k3pp_i (dimensionless) (in INaCa_i)
% k3pp_ss (dimensionless) (in INaCa_i)
% k4_i (dimensionless) (in INaCa_i)
% k4_ss (dimensionless) (in INaCa_i)
% k4p_i (dimensionless) (in INaCa_i)
% k4p_ss (dimensionless) (in INaCa_i)
% k4pp_i (dimensionless) (in INaCa_i)
% k4pp_ss (dimensionless) (in INaCa_i)
% k5_i (dimensionless) (in INaCa_i)
% k5_ss (dimensionless) (in INaCa_i)
% k6_i (dimensionless) (in INaCa_i)
% k6_ss (dimensionless) (in INaCa_i)
% k7_i (dimensionless) (in INaCa_i)
% k7_ss (dimensionless) (in INaCa_i)
% k8_i (dimensionless) (in INaCa_i)
% k8_ss (dimensionless) (in INaCa_i)
% x1_i (dimensionless) (in INaCa_i)
% x1_ss (dimensionless) (in INaCa_i)
% x2_i (dimensionless) (in INaCa_i)
% x2_ss (dimensionless) (in INaCa_i)
% x3_i (dimensionless) (in INaCa_i)
% x3_ss (dimensionless) (in INaCa_i)
% x4_i (dimensionless) (in INaCa_i)
% x4_ss (dimensionless) (in INaCa_i)
% E1 (dimensionless) (in INaK)
% E2 (dimensionless) (in INaK)
% E3 (dimensionless) (in INaK)
% E4 (dimensionless) (in INaK)
% INaK (microA_per_microF) (in INaK)
% JnakK (millimolar_per_millisecond) (in INaK)
% JnakNa (millimolar_per_millisecond) (in INaK)
% Knai (millimolar) (in INaK)
% Knao (millimolar) (in INaK)
% P (dimensionless) (in INaK)
% Pnak (milliS_per_microF) (in INaK)
% a1 (dimensionless) (in INaK)
% a2 (dimensionless) (in INaK)
% a3 (dimensionless) (in INaK)
% a4 (dimensionless) (in INaK)
% b1 (dimensionless) (in INaK)
% b2 (dimensionless) (in INaK)
% b3 (dimensionless) (in INaK)
% b4 (dimensionless) (in INaK)
% x1 (dimensionless) (in INaK)
% x2 (dimensionless) (in INaK)
% x3 (dimensionless) (in INaK)
% x4 (dimensionless) (in INaK)
% GNaL (milliS_per_microF) (in INaL)
% INaL (microA_per_microF) (in INaL)
% fINaLp (dimensionless) (in INaL)
% hLss (dimensionless) (in INaL)
% hLssp (dimensionless) (in INaL)
% mLss (dimensionless) (in INaL)
% thLp (millisecond) (in INaL)
% tmL (millisecond) (in INaL)
% INab (microA_per_microF) (in INab)
% Ahs (dimensionless) (in INa)
% INa (microA_per_microF) (in INa)
% fINap (dimensionless) (in INa)
% h (dimensionless) (in INa)
% hp (dimensionless) (in INa)
% hss (dimensionless) (in INa)
% hssp (dimensionless) (in INa)
% jss (dimensionless) (in INa)
% mss (dimensionless) (in INa)
% thf (millisecond) (in INa)
% ths (millisecond) (in INa)
% thsp (millisecond) (in INa)
% tj (millisecond) (in INa)
% tjp (millisecond) (in INa)
% tm (millisecond) (in INa)
% IpCa (microA_per_microF) (in IpCa)
% AiF (dimensionless) (in Ito)
% AiS (dimensionless) (in Ito)
% Gto (milliS_per_microF) (in Ito)
% Ito (microA_per_microF) (in Ito)
% ass (dimensionless) (in Ito)
% assp (dimensionless) (in Ito)
% delta_epi (dimensionless) (in Ito)
% dti_develop (dimensionless) (in Ito)
% dti_recover (dimensionless) (in Ito)
% fItop (dimensionless) (in Ito)
% i (dimensionless) (in Ito)
% ip (dimensionless) (in Ito)
% iss (dimensionless) (in Ito)
% ta (millisecond) (in Ito)
% tiF (millisecond) (in Ito)
% tiF_b (millisecond) (in Ito)
% tiFp (millisecond) (in Ito)
% tiS (millisecond) (in Ito)
% tiS_b (millisecond) (in Ito)
% tiSp (millisecond) (in Ito)
% Jleak (millimolar_per_millisecond) (in SERCA)
% Jup (millimolar_per_millisecond) (in SERCA)
% Jupnp (millimolar_per_millisecond) (in SERCA)
% Jupp (millimolar_per_millisecond) (in SERCA)
% fJupp (dimensionless) (in SERCA)
% upScale (dimensionless) (in SERCA)
% Acap (centimeter_squared) (in cell_geometry)
% Ageo (centimeter_squared) (in cell_geometry)
% vcell (microliter) (in cell_geometry)
% vjsr (microliter) (in cell_geometry)
% vmyo (microliter) (in cell_geometry)
% vnsr (microliter) (in cell_geometry)
% vss (microliter) (in cell_geometry)
% Jdiff (millimolar_per_millisecond) (in diff)
% JdiffK (millimolar_per_millisecond) (in diff)
% JdiffNa (millimolar_per_millisecond) (in diff)
% Bcai (dimensionless) (in intracellular_ions)
% Bcajsr (dimensionless) (in intracellular_ions)
% Bcass (dimensionless) (in intracellular_ions)
% cmdnmax (millimolar) (in intracellular_ions)
% Istim (microA_per_microF) (in membrane)
% vffrt (coulomb_per_mole) (in membrane)
% vfrt (dimensionless) (in membrane)
% EK (millivolt) (in reversal_potentials)
% EKs (millivolt) (in reversal_potentials)
% ENa (millivolt) (in reversal_potentials)
% Jrel (millimolar_per_millisecond) (in ryr)
% Jrel_inf (millimolar_per_millisecond) (in ryr)
% Jrel_inf_temp (millimolar_per_millisecond) (in ryr)
% Jrel_infp (millimolar_per_millisecond) (in ryr)
% Jrel_temp (millimolar_per_millisecond) (in ryr)
% a_rel (dimensionless) (in ryr)
% a_relp (dimensionless) (in ryr)
% btp (millisecond) (in ryr)
% fJrelp (dimensionless) (in ryr)
% tau_rel (millisecond) (in ryr)
% tau_rel_temp (millisecond) (in ryr)
% tau_relp (millisecond) (in ryr)
% tau_relp_temp (millisecond) (in ryr)
% Jtr (millimolar_per_millisecond) (in trans_flux)

%-------------------------------------------------------------------------------
% Computation
%-------------------------------------------------------------------------------

% time (millisecond)

CaMKb = CaMKo*(1.0-Y(1))/(1.0+KmCaM/Y(34));
CaMKa = CaMKb+Y(1);
dY(1, 1) = aCaMK*CaMKb*(CaMKb+Y(1))-bCaMK*Y(1);
dss = 1.0/(1.0+exp(-(Y(39)+3.94)/4.23));
td = 0.6+1.0/(exp(-0.05*(Y(39)+6.0))+exp(0.09*(Y(39)+14.0)));
dY(2, 1) = (dss-Y(2))/td;
fss = 1.0/(1.0+exp((Y(39)+19.58)/3.696));
tff = 7.0+1.0/(0.0045*exp(-(Y(39)+20.0)/10.0)+0.0045*exp((Y(39)+20.0)/10.0));
tfs = 1000.0+1.0/(0.000035*exp(-(Y(39)+5.0)/4.0)+0.000035*exp((Y(39)+5.0)/6.0));
Aff = 0.6;
Afs = 1.0-Aff;
dY(6, 1) = (fss-Y(6))/tff;
dY(8, 1) = (fss-Y(8))/tfs;
f = Aff*Y(6)+Afs*Y(8);
fcass = fss;
tfcaf = 7.0+1.0/(0.04*exp(-(Y(39)-4.0)/7.0)+0.04*exp((Y(39)-4.0)/7.0));
tfcas = 100.0+1.0/(0.00012*exp(-Y(39)/3.0)+0.00012*exp(Y(39)/7.0));
Afcaf = 0.3+0.6/(1.0+exp((Y(39)-10.0)/10.0));
Afcas = 1.0-Afcaf;
dY(3, 1) = (fcass-Y(3))/tfcaf;
dY(5, 1) = (fcass-Y(5))/tfcas;
fca = Afcaf*Y(3)+Afcas*Y(5);
tjca = 75.0;
dY(9, 1) = (fcass-Y(9))/tjca;
tffp = 2.5*tff;
dY(7, 1) = (fss-Y(7))/tffp;
fp = Aff*Y(7)+Afs*Y(8);
tfcafp = 2.5*tfcaf;
dY(4, 1) = (fcass-Y(4))/tfcafp;
fcap = Afcaf*Y(4)+Afcas*Y(5);
km2n = Y(9)*1.0;
anca = 1.0/(k2n/km2n+(1.0+Kmn/Y(34))^4.0);
dY(10, 1) = anca*k2n-Y(10)*km2n;
vffrt = Y(39)*F*F/(R*T);
vfrt = Y(39)*F/(R*T);
PhiCaL = 4.0*vffrt*(Y(34)*exp(2.0*vfrt)-0.341*cao)/(exp(2.0*vfrt)-1.0);
PhiCaNa = 1.0*vffrt*(0.75*Y(38)*exp(1.0*vfrt)-0.75*nao)/(exp(1.0*vfrt)-1.0);
PhiCaK = 1.0*vffrt*(0.75*Y(36)*exp(1.0*vfrt)-0.75*ko)/(exp(1.0*vfrt)-1.0);
PCa = PCa_b*1.2;
PCap = 1.1*PCa;
PCaNa = 0.00125*PCa;
PCaK = 3.574e-4*PCa;
PCaNap = 0.00125*PCap;
PCaKp = 3.574e-4*PCap;
fICaLp = 1.0/(1.0+KmCaMK/CaMKa);
ICaL = (1.0-fICaLp)*PCa*PhiCaL*Y(2)*(f*(1.0-Y(10))+Y(9)*fca*Y(10))+fICaLp*PCap*PhiCaL*Y(2)*(fp*(1.0-Y(10))+Y(9)*fcap*Y(10));
ICaNa = (1.0-fICaLp)*PCaNa*PhiCaNa*Y(2)*(f*(1.0-Y(10))+Y(9)*fca*Y(10))+fICaLp*PCaNap*PhiCaNa*Y(2)*(fp*(1.0-Y(10))+Y(9)*fcap*Y(10));
ICaK = (1.0-fICaLp)*PCaK*PhiCaK*Y(2)*(f*(1.0-Y(10))+Y(9)*fca*Y(10))+fICaLp*PCaKp*PhiCaK*Y(2)*(fp*(1.0-Y(10))+Y(9)*fcap*Y(10));
ICab = PCab*4.0*vffrt*(Y(31)*exp(2.0*vfrt)-0.341*cao)/(exp(2.0*vfrt)-1.0);
xk1ss = 1.0/(1.0+exp(-(Y(39)+2.5538*ko+144.59)/(1.5692*ko+3.8115)));
txk1 = 122.2/(exp(-(Y(39)+127.2)/20.36)+exp((Y(39)+236.8)/69.33));
dY(11, 1) = (xk1ss-Y(11))/txk1;
rk1 = 1.0/(1.0+exp((Y(39)+105.8-2.6*ko)/9.493));
GK1 = GK1_b*1.2;
EK = R*T/F*log(ko/Y(35));
IK1 = GK1*sqrt(ko/1.0)*rk1*Y(11)*(Y(39)-EK);
xkb = 1.0/(1.0+exp(-(Y(39)-14.48)/18.34));
GKb = GKb_b*0.6;
IKb = GKb*xkb*(Y(39)-EK);
xrss = 1.0/(1.0+exp(-(Y(39)+8.337)/6.789));
txrf = 12.98+1.0/(0.3652*exp((Y(39)-31.66)/3.869)+4.123e-5*exp(-(Y(39)-47.78)/20.38));
txrs = 1.865+1.0/(0.06629*exp((Y(39)-34.7)/7.355)+1.128e-5*exp(-(Y(39)-29.74)/25.94));
Axrf = 1.0/(1.0+exp((Y(39)+54.81)/38.21));
Axrs = 1.0-Axrf;
dY(12, 1) = (xrss-Y(12))/txrf;
dY(13, 1) = (xrss-Y(13))/txrs;
xr = Axrf*Y(12)+Axrs*Y(13);
rkr = 1.0/(1.0+exp((Y(39)+55.0)/75.0))*1.0/(1.0+exp((Y(39)-10.0)/30.0));
GKr = GKr_b*1.3;
IKr = GKr*sqrt(ko/5.4)*xr*rkr*(Y(39)-EK);
xs1ss = 1.0/(1.0+exp(-(Y(39)+11.6)/8.932));
txs1 = 817.3+1.0/(2.326e-4*exp((Y(39)+48.28)/17.8)+0.001292*exp(-(Y(39)+210.0)/230.0));
dY(14, 1) = (xs1ss-Y(14))/txs1;
xs2ss = xs1ss;
txs2 = 1.0/(0.01*exp((Y(39)-50.0)/20.0)+0.0193*exp(-(Y(39)+66.54)/31.0));
dY(15, 1) = (xs2ss-Y(15))/txs2;
KsCa = 1.0+0.6/(1.0+(3.8e-5/Y(31))^1.4);
GKs = GKs_b*1.4;
EKs = R*T/F*log((ko+PKNa*nao)/(Y(35)+PKNa*Y(37)));
IKs = GKs*KsCa*Y(14)*Y(15)*(Y(39)-EKs);
mss = 1.0/(1.0+exp(-(Y(39)+mssV1)/mssV2));
tm = 1.0/(mtD1*exp((Y(39)+mtV1)/mtV2)+mtD2*exp(-(Y(39)+mtV3)/mtV4));
dY(24, 1) = (mss-Y(24))/tm;
hss = 1.0/(1.0+exp((Y(39)+hssV1)/hssV2));
thf = 1.0/(1.432e-5*exp(-(Y(39)+1.196)/6.285)+6.149*exp((Y(39)+0.5096)/20.27));
ths = 1.0/(0.009794*exp(-(Y(39)+17.95)/28.05)+0.3343*exp((Y(39)+5.73)/56.66));
Ahs = 1.0-Ahf;
dY(19, 1) = (hss-Y(19))/thf;
dY(20, 1) = (hss-Y(20))/ths;
h = Ahf*Y(19)+Ahs*Y(20);
jss = hss;
tj = 2.038+1.0/(0.02136*exp(-(Y(39)+100.6)/8.281)+0.3052*exp((Y(39)+0.9941)/38.45));
dY(22, 1) = (jss-Y(22))/tj;
hssp = 1.0/(1.0+exp((Y(39)+89.1)/6.086));
thsp = 3.0*ths;
dY(21, 1) = (hssp-Y(21))/thsp;
hp = Ahf*Y(19)+Ahs*Y(21);
tjp = 1.46*tj;
dY(23, 1) = (jss-Y(23))/tjp;
fINap = 1.0/(1.0+KmCaMK/CaMKa);
ENa = R*T/F*log(nao/Y(37));
INa = GNa*(Y(39)-ENa)*Y(24)^3.0*((1.0-fINap)*h*Y(22)+fINap*hp*Y(23));
hca = exp(qca*Y(39)*F/(R*T));
hna = exp(qna*Y(39)*F/(R*T));
h1_i = 1.0+Y(37)/kna3*(1.0+hna);
h2_i = Y(37)*hna/(kna3*h1_i);
h3_i = 1.0/h1_i;
h4_i = 1.0+Y(37)/kna1*(1.0+Y(37)/kna2);
h5_i = Y(37)*Y(37)/(h4_i*kna1*kna2);
h6_i = 1.0/h4_i;
h7_i = 1.0+nao/kna3*(1.0+1.0/hna);
h8_i = nao/(kna3*hna*h7_i);
h9_i = 1.0/h7_i;
h10_i = kasymm+1.0+nao/kna1*(1.0+nao/kna2);
h11_i = nao*nao/(h10_i*kna1*kna2);
h12_i = 1.0/h10_i;
k1_i = h12_i*cao*kcaon;
k2_i = kcaoff;
k3p_i = h9_i*wca;
k3pp_i = h8_i*wnaca;
k3_i = k3p_i+k3pp_i;
k4p_i = h3_i*wca/hca;
k4pp_i = h2_i*wnaca;
k4_i = k4p_i+k4pp_i;
k5_i = kcaoff;
k6_i = h6_i*Y(31)*kcaon;
k7_i = h5_i*h2_i*wna;
k8_i = h8_i*h11_i*wna;
x1_i = k2_i*k4_i*(k7_i+k6_i)+k5_i*k7_i*(k2_i+k3_i);
x2_i = k1_i*k7_i*(k4_i+k5_i)+k4_i*k6_i*(k1_i+k8_i);
x3_i = k1_i*k3_i*(k7_i+k6_i)+k8_i*k6_i*(k2_i+k3_i);
x4_i = k2_i*k8_i*(k4_i+k5_i)+k3_i*k5_i*(k1_i+k8_i);
E1_i = x1_i/(x1_i+x2_i+x3_i+x4_i);
E2_i = x2_i/(x1_i+x2_i+x3_i+x4_i);
E3_i = x3_i/(x1_i+x2_i+x3_i+x4_i);
E4_i = x4_i/(x1_i+x2_i+x3_i+x4_i);
allo_i = 1.0/(1.0+(KmCaAct/Y(31))^2.0);
JncxNa_i = 1.0*(3.0*(E4_i*k7_i-E1_i*k8_i)+E3_i*k4pp_i-E2_i*k3pp_i);
JncxCa_i = 1.0*(E2_i*k2_i-E1_i*k1_i);
Gncx = Gncx_b*1.1;
INaCa_i = 0.8*1.0*Gncx*allo_i*(zna*JncxNa_i+zca*JncxCa_i);
h1_ss = 1.0+Y(38)/kna3*(1.0+hna);
h2_ss = Y(38)*hna/(kna3*h1_ss);
h3_ss = 1.0/h1_ss;
h4_ss = 1.0+Y(38)/kna1*(1.0+Y(38)/kna2);
h5_ss = Y(38)*Y(38)/(h4_ss*kna1*kna2);
h6_ss = 1.0/h4_ss;
h7_ss = 1.0+nao/kna3*(1.0+1.0/hna);
h8_ss = nao/(kna3*hna*h7_ss);
h9_ss = 1.0/h7_ss;
h10_ss = kasymm+1.0+nao/kna1*(1.0+nao/kna2);
h11_ss = nao*nao/(h10_ss*kna1*kna2);
h12_ss = 1.0/h10_ss;
k1_ss = h12_ss*cao*kcaon;
k2_ss = kcaoff;
k3p_ss = h9_ss*wca;
k3pp_ss = h8_ss*wnaca;
k3_ss = k3p_ss+k3pp_ss;
k4p_ss = h3_ss*wca/hca;
k4pp_ss = h2_ss*wnaca;
k4_ss = k4p_ss+k4pp_ss;
k5_ss = kcaoff;
k6_ss = h6_ss*Y(34)*kcaon;
k7_ss = h5_ss*h2_ss*wna;
k8_ss = h8_ss*h11_ss*wna;
x1_ss = k2_ss*k4_ss*(k7_ss+k6_ss)+k5_ss*k7_ss*(k2_ss+k3_ss);
x2_ss = k1_ss*k7_ss*(k4_ss+k5_ss)+k4_ss*k6_ss*(k1_ss+k8_ss);
x3_ss = k1_ss*k3_ss*(k7_ss+k6_ss)+k8_ss*k6_ss*(k2_ss+k3_ss);
x4_ss = k2_ss*k8_ss*(k4_ss+k5_ss)+k3_ss*k5_ss*(k1_ss+k8_ss);
E1_ss = x1_ss/(x1_ss+x2_ss+x3_ss+x4_ss);
E2_ss = x2_ss/(x1_ss+x2_ss+x3_ss+x4_ss);
E3_ss = x3_ss/(x1_ss+x2_ss+x3_ss+x4_ss);
E4_ss = x4_ss/(x1_ss+x2_ss+x3_ss+x4_ss);
allo_ss = 1.0/(1.0+(KmCaAct/Y(34))^2.0);
JncxNa_ss = 1.0*(3.0*(E4_ss*k7_ss-E1_ss*k8_ss)+E3_ss*k4pp_ss-E2_ss*k3pp_ss);
JncxCa_ss = 1.0*(E2_ss*k2_ss-E1_ss*k1_ss);
INaCa_ss = 0.2*1.0*Gncx*allo_ss*(zna*JncxNa_ss+zca*JncxCa_ss);
Knai = Knai0*exp(delta*Y(39)*F/(3.0*R*T));
Knao = Knao0*exp((1.0-delta)*Y(39)*F/(3.0*R*T));
P = eP/(1.0+H/Khp+Y(37)/Knap+Y(35)/Kxkur);
a1 = k1p*(Y(37)/Knai)^3.0/((1.0+Y(37)/Knai)^3.0+(1.0+Y(35)/Kki)^2.0-1.0);
b1 = k1m*MgADP;
a2 = k2p;
b2 = k2m*(nao/Knao)^3.0/((1.0+nao/Knao)^3.0+(1.0+ko/Kko)^2.0-1.0);
a3 = k3p*(ko/Kko)^2.0/((1.0+nao/Knao)^3.0+(1.0+ko/Kko)^2.0-1.0);
b3 = k3m*P*H/(1.0+MgATP/Kmgatp);
a4 = k4p*MgATP/Kmgatp/(1.0+MgATP/Kmgatp);
b4 = k4m*(Y(35)/Kki)^2.0/((1.0+Y(37)/Knai)^3.0+(1.0+Y(35)/Kki)^2.0-1.0);
x1 = a4*a1*a2+b2*b4*b3+a2*b4*b3+b3*a1*a2;
x2 = b2*b1*b4+a1*a2*a3+a3*b1*b4+a2*a3*b4;
x3 = a2*a3*a4+b3*b2*b1+b2*b1*a4+a3*a4*b1;
x4 = b4*b3*b2+a3*a4*a1+b2*a4*a1+b3*b2*a1;
E1 = x1/(x1+x2+x3+x4);
E2 = x2/(x1+x2+x3+x4);
E3 = x3/(x1+x2+x3+x4);
E4 = x4/(x1+x2+x3+x4);
JnakNa = 3.0*(E1*a3-E2*b3);
JnakK = 2.0*(E4*b1-E3*a1);
Pnak = Pnak_b*0.9;
INaK = 1.0*1.0*Pnak*(zna*JnakNa+zk*JnakK);
mLss = 1.0/(1.0+exp(-(Y(39)+42.85)/5.264));
tmL = tm;
dY(18, 1) = (mLss-Y(18))/tmL;
hLss = 1.0/(1.0+exp((Y(39)+87.61)/7.488));
dY(16, 1) = (hLss-Y(16))/thL;
hLssp = 1.0/(1.0+exp((Y(39)+93.81)/7.488));
thLp = 3.0*thL;
dY(17, 1) = (hLssp-Y(17))/thLp;
GNaL = GNaL_b*0.6;
fINaLp = 1.0/(1.0+KmCaMK/CaMKa);
INaL = GNaL*(Y(39)-ENa)*Y(18)*((1.0-fINaLp)*Y(16)+fINaLp*Y(17));
INab = PNab*vffrt*(Y(37)*exp(vfrt)-nao)/(exp(vfrt)-1.0);
IpCa = GpCa*Y(31)/(KmCap+Y(31));
ass = 1.0/(1.0+exp(-(Y(39)-14.34)/14.82));
ta = 1.0515/(1.0/(1.2089*(1.0+exp(-(Y(39)-18.4099)/29.3814)))+3.5/(1.0+exp((Y(39)+100.0)/29.3814)));
dY(25, 1) = (ass-Y(25))/ta;
iss = 1.0/(1.0+exp((Y(39)+43.94)/5.711));
delta_epi = 1.0-0.95/(1.0+exp((Y(39)+70.0)/5.0));
tiF_b = 4.562+1.0/(0.3933*exp(-(Y(39)+100.0)/100.0)+0.08004*exp((Y(39)+50.0)/16.59));
tiS_b = 23.62+1.0/(0.001416*exp(-(Y(39)+96.52)/59.05)+1.78e-8*exp((Y(39)+114.1)/8.079));
tiF = tiF_b*delta_epi;
tiS = tiS_b*delta_epi;
AiF = 1.0/(1.0+exp((Y(39)-213.6)/151.2));
AiS = 1.0-AiF;
dY(27, 1) = (iss-Y(27))/tiF;
dY(29, 1) = (iss-Y(29))/tiS;
i = AiF*Y(27)+AiS*Y(29);
assp = 1.0/(1.0+exp(-(Y(39)-24.34)/14.82));
dY(26, 1) = (assp-Y(26))/ta;
dti_develop = 1.354+1.0e-4/(exp((Y(39)-167.4)/15.89)+exp(-(Y(39)-12.23)/0.2154));
dti_recover = 1.0-0.5/(1.0+exp((Y(39)+70.0)/20.0));
tiFp = dti_develop*dti_recover*tiF;
tiSp = dti_develop*dti_recover*tiS;
dY(28, 1) = (iss-Y(28))/tiFp;
dY(30, 1) = (iss-Y(30))/tiSp;
ip = AiF*Y(28)+AiS*Y(30);
Gto = Gto_b*4.0;
fItop = 1.0/(1.0+KmCaMK/CaMKa);
Ito = Gto*(Y(39)-EK)*((1.0-fItop)*Y(25)*i+fItop*Y(26)*ip);
upScale = 1.3;
Jupnp = upScale*0.004375*Y(31)/(Y(31)+0.00092);
Jupp = upScale*2.75*0.004375*Y(31)/(Y(31)+0.00092-0.00017);
fJupp = 1.0/(1.0+KmCaMK/CaMKa);
Jleak = 0.0039375*Y(33)/15.0;
Jup = (1.0-fJupp)*Jupnp+fJupp*Jupp-Jleak;
vcell = 1000.0*3.14*rad*rad*L;
Ageo = 2.0*3.14*rad*rad+2.0*3.14*rad*L;
Acap = 2.0*Ageo;
vmyo = 0.68*vcell;
vnsr = 0.0552*vcell;
vjsr = 0.0048*vcell;
vss = 0.02*vcell;
JdiffNa = (Y(38)-Y(37))/2.0;
JdiffK = (Y(36)-Y(35))/2.0;
Jdiff = (Y(34)-Y(31))/0.2;
cmdnmax = cmdnmax_b*1.3;
dY(37, 1) = -(INa+INaL+3.0*INaCa_i+3.0*INaK+INab)*Acap*cm/(F*vmyo)+JdiffNa*vss/vmyo;
dY(38, 1) = -(ICaNa+3.0*INaCa_ss)*cm*Acap/(F*vss)-JdiffNa;

if (time <= duration)
   Istim = amp;
else
   Istim = 0.0;
end;

dY(35, 1) = -(Ito+IKr+IKs+IK1+IKb+Istim-2.0*INaK)*cm*Acap/(F*vmyo)+JdiffK*vss/vmyo;
dY(36, 1) = -ICaK*cm*Acap/(F*vss)-JdiffK;
Bcai = 1.0/(1.0+cmdnmax*kmcmdn/(kmcmdn+Y(31))^2.0+trpnmax*kmtrpn/(kmtrpn+Y(31))^2.0);
dY(31, 1) = Bcai*(-(IpCa+ICab-2.0*INaCa_i)*cm*Acap/(2.0*F*vmyo)-Jup*vnsr/vmyo+Jdiff*vss/vmyo);
Bcass = 1.0/(1.0+BSRmax*KmBSR/(KmBSR+Y(34))^2.0+BSLmax*KmBSL/(KmBSL+Y(34))^2.0);
fJrelp = 1.0/(1.0+KmCaMK/CaMKa);
Jrel = (1.0-fJrelp)*Y(40)+fJrelp*Y(41);
dY(34, 1) = Bcass*(-(ICaL-2.0*INaCa_ss)*cm*Acap/(2.0*F*vss)+Jrel*vjsr/vss-Jdiff);
Jtr = (Y(33)-Y(32))/100.0;
dY(33, 1) = Jup-Jtr*vjsr/vnsr;
Bcajsr = 1.0/(1.0+csqnmax*kmcsqn/(kmcsqn+Y(32))^2.0);
dY(32, 1) = Bcajsr*(Jtr-Jrel);
dY(39, 1) = -(INa+INaL+Ito+ICaL+ICaNa+ICaK+IKr+IKs+IK1+INaCa_i+INaCa_ss+INaK+INab+IKb+IpCa+ICab+Istim);
a_rel = 0.5*bt;
Jrel_inf_temp = 1.0*a_rel*-ICaL/(1.0+1.0*(1.5/Y(32))^8.0);
Jrel_inf = Jrel_inf_temp;
tau_rel_temp = bt/(1.0+0.0123/Y(32));

if (tau_rel_temp < 0.001)
   tau_rel = 0.001;
else
   tau_rel = tau_rel_temp;
end;

dY(40, 1) = (Jrel_inf-Y(40))/tau_rel;
btp = 1.25*bt;
a_relp = 0.5*btp;
Jrel_temp = 1.0*a_relp*-ICaL/(1.0+1.0*(1.5/Y(32))^8.0);
Jrel_infp = Jrel_temp;
tau_relp_temp = btp/(1.0+0.0123/Y(32));

if (tau_relp_temp < 0.001)
   tau_relp = 0.001;
else
   tau_relp = tau_relp_temp;
end;

dY(41, 1) = (Jrel_infp-Y(41))/tau_relp;

CompVar = [CaMKa CaMKb Afcaf Afcas Aff Afs ICaK ICaL ICaNa PCa PCaK PCaKp PCaNa PCaNap PCap PhiCaK PhiCaL PhiCaNa anca dss f fICaLp fca fcap fcass fp fss km2n td tfcaf tfcafp tfcas tff tffp tfs tjca ICab GK1 IK1 rk1 txk1 xk1ss GKb IKb xkb Axrf Axrs GKr IKr rkr txrf txrs xr xrss GKs IKs KsCa txs1 txs2 xs1ss xs2ss E1_i E1_ss E2_i E2_ss E3_i E3_ss E4_i E4_ss Gncx INaCa_i INaCa_ss JncxCa_i JncxCa_ss JncxNa_i JncxNa_ss allo_i allo_ss h10_i h10_ss h11_i h11_ss h12_i h12_ss h1_i h1_ss h2_i h2_ss h3_i h3_ss h4_i h4_ss h5_i h5_ss h6_i h6_ss h7_i h7_ss h8_i h8_ss h9_i h9_ss hca hna k1_i k1_ss k2_i k2_ss k3_i k3_ss k3p_i k3p_ss k3pp_i k3pp_ss k4_i k4_ss k4p_i k4p_ss k4pp_i k4pp_ss k5_i k5_ss k6_i k6_ss k7_i k7_ss k8_i k8_ss x1_i x1_ss x2_i x2_ss x3_i x3_ss x4_i x4_ss E1 E2 E3 E4 INaK JnakK JnakNa Knai Knao P Pnak a1 a2 a3 a4 b1 b2 b3 b4 x1 x2 x3 x4 GNaL INaL fINaLp hLss hLssp mLss thLp tmL INab Ahs INa fINap h hp hss hssp jss mss thf ths thsp tj tjp tm IpCa AiF AiS Gto Ito ass assp delta_epi dti_develop dti_recover fItop i ip iss ta tiF tiF_b tiFp tiS tiS_b tiSp Jleak Jup Jupnp Jupp fJupp upScale Acap Ageo vcell vjsr vmyo vnsr vss Jdiff JdiffK JdiffNa Bcai Bcajsr Bcass cmdnmax Istim vffrt vfrt EK EKs ENa Jrel Jrel_inf Jrel_inf_temp Jrel_infp Jrel_temp a_rel a_relp btp fJrelp tau_rel tau_rel_temp tau_relp tau_relp_temp Jtr ];

%===============================================================================
% End of file
%===============================================================================
