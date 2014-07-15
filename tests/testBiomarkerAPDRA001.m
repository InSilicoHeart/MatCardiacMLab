function [result,msg] = testBiomarkerAPDRA001()

result = false;
msg = 'Unknow error';
try
  APDini = 300;
  APDend = 200;
  tauF_r = 10;
  tauS_r = 100;
  t = [0:800]'*0.6;
  APD = (APDini-APDend)*(0.5*exp(-t/tauF_r)+0.5*exp(-t/tauS_r))+APDend;
  [tauF_c,tauS_c]=calculateTaus(APD,t');  
  disp(['TauF real = ' num2str(tauF_r) ' --- TauF computed = ' num2str(tauF_c)])
  disp(['TauS real = ' num2str(tauS_r) ' --- TauS computed = ' num2str(tauS_c)])
  errF = (tauF_c-tauF_r)/tauF_r*100;
  errS = (tauS_c-tauS_r)/tauS_r*100;
  if(errF<1e-3 & errS<1e-3)
    result = true;
  end
  msg = ['Error fast: ' num2str(errF) '% --- Error slow: ' num2str(errS) '%'];
cath ME
  disp(['Err:' ME ])
  result = false;
  msg = lasterr;
  return;
end
