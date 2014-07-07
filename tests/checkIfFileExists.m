function exists = checkIfFileExists(folder,fileName)

exists = false;

files = dir(folder);
for i=1:length(files)
  if(strcmp(files(i).name,fileName))
    exists = true;
    break
  end
end

