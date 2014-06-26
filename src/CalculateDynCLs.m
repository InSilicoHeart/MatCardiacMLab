function [CLs,num] = CalculateDynCLs(CL_ini)

CLs = CL_ini;

if(CL_ini>2000)
  num = 30;
else 
  num = 100;
end

i=2;

while(CLs(i-1)>50)
  if(CLs(i-1)>2000)
    CLs(i)=CLs(i-1)-1000;
    num(i) = 30; 
  else if(CLs(i-1)>1000)
    CLs(i)=CLs(i-1)-1000;
    num(i)=100;
    else if(CLs(i-1)>500)
      CLs(i)=CLs(i-1)-250;
      num(i)=100;
      else if(CLs(i-1)>400)
        CLs(i)=CLs(i-1)-50;
        num(i)=100;
        else if(CLs(i-1)>300)
          CLs(i)=CLs(i-1)-10;
          num(i)=100;
          else if(CLs(i-1)>250)
            CLs(i)=CLs(i-1)-5;
            num(i)=100;
            else if(CLs(i-1)>50)
              CLs(i)=CLs(i-1)-1;
              num(i)=100;
              else
                break;
              end
            end
          end
        end
      end
    end
  end
  i=i+1;
end
