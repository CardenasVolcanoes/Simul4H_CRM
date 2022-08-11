 function temperature = Temperature_model2D_v3(VecInput,alpha)

% Labeling variables
Tin=VecInput(1); % Kelvin Initial temperature
t=VecInput(2); % Secons
H=VecInput(3);% Value
a=VecInput(4);
r=0.099*a; % m Size of clast

if a==0.06
    rho= 2202.4;
elseif a==0.08
    rho=2243.2;
elseif a==0.10
    rho = 1740.2;
end


Cp = 550.106+0.686*Tin+(-262.558)./Tin.^2;
K = 1./(0.3666+Tin*2*10^-4);

   rho=2061.9; % Valor promedio de las muestras analizadas
   kapp=K/(rho*Cp);   
   h=H/K;
   summ=0;
   
   % variables
   % Tin temperatura inicial
   % a= tamaño de muestra
   % r= distancia radial del termopar
   % alpha raices de la ecuacion transcedental
   
 for jj=1:length(alpha)
	Coeff=(a.^2.*alpha(jj).^2+(a.*h-1).^2)./(alpha(jj).^2.*(a.^2.*alpha(jj).^2+h.*a.*(a.*h-1)));
    Temp=exp(-kapp.*t.*alpha(jj).^2).*Coeff.*sin(r.*alpha(jj)).*sin(a.*alpha(jj));  
   summ=summ+Temp;
 end  
 temperature=2.*h.*Tin.*(1./r).*summ;
 end

