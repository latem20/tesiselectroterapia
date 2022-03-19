% Autor: Isaí Quinche

%codigo para captura de datos del puerto serial tipo char a double
%y almacena los datos en archivos excel y txt
% en columnas ó numero de variables 
%por filas ó numero de muestras de datos

clf;
%borro previa configuracion serial
delete(instrfind({'Port'},{'COM6'}));
%configuracion serial 
s = serial('COM6','BaudRate',9600);
%inicio puerto serial
fopen(s);
%numero de muestra de datos - filas
m=10;
%numero de variables - columna
n=4;
%matriz temporal
datos=zeros(m,n);

for j=1:m
    
    for i=1:n
        %lectura de datos en matriz 
        datos(j,i)=str2double(fscanf(s));
    
    end
    
end

%   almacena matriz temporal en archivos xlsx y txt 
%xlswrite('lec3.33hz100ms+6000.xlsx',datos);
%writematrix(datos, "lec3.33hz100ms+6000.txt");

%    cierro puerto serial
fclose(s);


