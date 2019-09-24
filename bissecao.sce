function [y] = bissec(a,b,e)

    Fc = (a + b)/ 2; // poderia ser qualquer valor acima de e (epsolon)
    
    while(abs(Fc)>e) 
        Fa = avaliaf(a);
        Fb = avaliaf(b);
        c = (a + b)/ 2;
        Fc = avaliaf(c);
        
        if (Fc==0) then
           break;     
        end
        if (Fa*Fc)<0 then
            b = c;
        else
            a = c;
        end
     end
 y = c;
endfunction 

function [z] = avaliaf(x)
    z = x^2 - 4;
endfunction
