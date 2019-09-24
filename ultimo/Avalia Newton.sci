function[y]=avaliaNewton(c,x,t) 
    i=length(c);                
    y=c(1);                     
    soma = 1;
    for j=2 : i                 
        soma=soma*(t-x(j-1));   
        y=y+c(j)*soma;          
    end
endfunction
