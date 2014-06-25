function rewriteModel(file_name, Y0)


if(strcmp(file_name(end-1:end),'.m'))
    file_name = file_name(1:end-2);
end
model_extension = '.m';

file = fopen([file_name model_extension]);
A=char(fread(file)');
fclose(file);

ind=findstr(A,'% Y = ');

B1 = A(1:ind(1)-1);
B2 = ['% Y = [' num2str(Y0(1)) num2str(Y0(2:end),',%10.5e') ']'];
ind2 = findstr(A(ind(1)+1:end),']');
B3 = A(ind2(1)+ind(1)+1:end);

B= [B1 B2 B3];
file = fopen([file_name model_extension],'w+');
fwrite(file,B);
fclose(file);

