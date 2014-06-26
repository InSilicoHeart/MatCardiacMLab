function triangulation=calculateTriangulation(values,t)

apd90=CalculateAPD(values,t,0.9);
apd50=CalculateAPD(values,t,0.5);
triangulation = apd90-apd50;
