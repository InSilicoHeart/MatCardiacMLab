 function Model = CreateModelStructure(Name,SV0,mf,SVNames,SVUnits,CNames,C0,CUnits,CVNames,CVUnits)
 
Model.Name = Name;
Model.mf = mf;
Model.SVnum = length(SV0);
Model.SV0 = SV0;
Model.SVNames = SVNames;
Model.SVUnits = SVUnits;
Model.Cnum = length(CNames);
Model.C0 = C0;
Model.CNames = CNames;
Model.CUnits = CUnits;
Model.CVnum = length(CVNames);
Model.CVNames = CVNames;
Model.CVUnits = CVUnits;
