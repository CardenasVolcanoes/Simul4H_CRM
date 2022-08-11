% Encuentra las n raices para a y h
 function alpha = root_alpha (a,h,n)
aa=0.95*pi/a;
alpha=linspace(1,n);
funy =@(x)  a*x*cot(a*x)+a*h-1;
 % kk=1;
     for N=1:n
         x0=N*aa;
        [x, ~] = fzero(funy,x0);
       %  [x, ~] = fsolve(funy,x0);
        alpha(N)=x; 
%        ffval(kk)=fval;
      % kk=kk+1;
     end   
 end
      