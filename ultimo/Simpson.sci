function[y]=simpson(a,b,n)
    h=(b-a)/(2*n);
    soma = exp(-a^2)+exp(-b^2);
    i=a+h
    while i<b
        if i==(b+a)/2 then
            soma = soma + 2*exp(-i^2);
            disp("if");
        else
            soma = soma + 4*exp(-i^2);
            disp("else");
        end
        i=i+h;
    end
    soma=soma*h/3;
    y=soma;
endfunction
