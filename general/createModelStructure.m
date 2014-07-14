%% CreateModelStructure - Creates a model structure for the 
%            MatCardiacMLab simualtor                                
%
%       model = createModelStructure(Name,mf,SV0,SVNames,SVUnits,...
%                                    C0,CNames,CUnits,CVNames,CVUnits)                                    
%                                                                                                                                                                                                  
%    Input:                                                                 
%      Name:    String with model's name
%      mf:      Function of the model
%      SV0:     Vector with initial value of the state variables
%      SVNames: Cell array with state variable names
%      SVUnits: Cell array with state variable units
%      C0:      Vector with the constants values
%      CNames:  Cell array with constant names
%      CUnits:  Cell array with constant units
%      CVNames: Cell array with computed variable names
%      CVUnits: Cell array with computed variable units          
%                                                                           
%    Output:                                                                
%      model:   Model structure
%
%    Throws:
%      SVInconsistence: Dimensions of SV structures don't match
%      CVInconsistence: Dimensions of CV structures don't match
%      ConstInconsistence:Dimensions of Constant structures don't match
%
%-----------------------------------------------------------------------
% 
% MatCardiacMLab
%
% Matlab toolbox to Simulate Electrophysiologycal Cardiac Models 
% described in CellML files
%
% Jesus Carro Fernandez 
% jcarro@usj.es  
%                      
% School of Engineering
% San Jorge University 
% www.usj.es  
%       
% Last Modification 2014/07/09
%

function model = createModelStructure(Name,mf,SV0,SVNames,SVUnits,...
                                       C0,CNames,CUnits,CVNames,CVUnits)
 
model.Name = Name;
model.mf = mf;

model.SVnum = length(SV0);
model.SV0 = SV0;
model.SVNames = SVNames;
model.SVUnits = SVUnits;

if(length(SVNames)~=model.SVnum)
  error('MatCardiacMLab:createModelStructure:SVInconsistence',...
        'SVNames length doesn''t matcch SV length')
end

if(length(SVUnits)~=model.SVnum)
  error('MatCardiacMLab:createModelStructure:SVInconsistence',...
        'SVUnits length doesn''t matcch SV length')
end

model.Cnum = length(C0);
model.C0 = C0;
model.CNames = CNames;
model.CUnits = CUnits;

if(length(CNames)~=model.Cnum)
  error('MatCardiacMLab:createModelStructure:ConstInconsistence',...
        'CNames length doesn''t matcch Const length')
end

if(length(CUnits)~=model.Cnum)
  error('MatCardiacMLab:createModelStructure:ConstInconsistence',...
        'CUnits length doesn''t matcch Const length')
end

model.CVnum = length(CVNames);
model.CVNames = CVNames;
model.CVUnits = CVUnits;

if(length(CVUnits)~=model.CVnum)
  error('MatCardiacMLab:createModelStructure:CVInconsistence',...
        'CVUnits length doesn''t match CV length')
end
