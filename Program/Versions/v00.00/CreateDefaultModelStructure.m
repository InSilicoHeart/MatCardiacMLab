function CreateDefaultModelStructure(output)

% 1. Carro et al. 2011 EPI
a.Carro2011EPI = CreateModel('models/Carro_Rodriguez_Laguna_Pueyo_2011_EPI',...
    'models/Carro_Rodriguez_Laguna_Pueyo_2011_EPI','Carro et al. 2011 - EPI');

% 2. Carro et al. 2011 ENDO
a.Carro2011ENDO = CreateModel('models/Carro_Rodriguez_Laguna_Pueyo_2011_ENDO',...
    'models/Carro_Rodriguez_Laguna_Pueyo_2011_ENDO','Carro et al. 2011 - ENDO');

% 3. ten Tusscher and Panfilov 2006 EPI
a.tenTusscher2006EPI = CreateModel('models/ten_Tusscher_Panfilov_2006_EPI',...
    'models/ten_Tusscher_Panfilov_2006_EPI','ten Tusscher and Panfilov 2006 - EPI');

% 4. ten Tusscher and Panfilov 2006 MID
a.tenTusscher2006MID = CreateModel('models/ten_Tusscher_Panfilov_2006_MID',...
    'models/ten_Tusscher_Panfilov_2006_MID','ten Tusscher and Panfilov 2006 - MID');

% 5. ten Tusscher 2004 EPI
a.tenTusscher2004EPI = CreateModel('models/ten_tusscher_model_2004_epi',...
    'models/ten_tusscher_model_2004_epi','ten tusscher 2004 - EPI');

% 6. ten Tusscher and Panfilov 2006 ENDO
a.tenTusscher2006ENDO = CreateModel('models/ten_Tusscher_Panfilov_2006_ENDO',...
    'models/ten_Tusscher_Panfilov_2006_ENDO','ten Tusscher and Panfilov 2006 - ENDO');

% 7. Iyer et al. 2004
a.Iyer2004 = CreateModel('models/Iyer_Mazhari_Winslow_2004',...
    'models/Iyer_Mazhari_Winslow_2004','Iyer et al. 2004');

% 8. Grandi et al. 2010 - EPI
a.Grandi2010EPI = CreateModel('models/Grandi_Pasqualini_Bers_2010_EPI',...
    'models/Grandi_Pasqualini_Bers_2010_EPI','Grandi et al. 2010 - EPI');

% 9. Grandi et al. 2010 - ENDO
a.Grandi2010ENDO = CreateModel('models/Grandi_Pasqualini_Bers_2010_ENDO',...
    'models/Grandi_Pasqualini_Bers_2010_ENDO','Grandi et al. 2010 - ENDO');

%10. O'Hara et al. 2011 - EPI
a.OHara2011EPI = CreateModel('models/OHara_Rudy_2011_EPI',...
    'models/OHara_Rudy_2011_EPI','O''Hara et al. 2011 - EPI');

if(nargin==0)
    [filename, pathname] = uigetfile('*.mat','Select a file','default.mat');
    output = [pathname '/' filename];
end

save(output,'-struct','a')
