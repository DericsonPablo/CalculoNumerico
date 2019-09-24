

function [y]=integ(P,a,b)
    for (i=1:length(P))
        y(i) = P(i)/ (length(P) - i + 1);
    end
    y = [y;0];
endfunction


function [y]=avalia(P,x)
    y = 0;
    for (i=1:length(P))
        y = y + P(i) * x^(length(P)-i);
    end
endfunction



function y=ortogonal(a,b,n,x)
    
    auxA = [1];
    auxB = [1; - (avalia(integ(x,a,b), x) / (avalia(integ(1,a,b), 1)];
    
    for (i=2:n)
        
        beta1 = (avalia(integ(x*auxB(i)*auxA(i),a,b), x)/(avalia(integ(auxA(i)^2,a,b), x);
        gama1 = (avalia(integ(x*auxB(i)^2,a,b), x)/(avalia(integ(auxB(i)^2,a,b), x);
        
        poli = [0;0;0];
        for (j=1:length(auxB)
            poli(i) = (auxA(i)*(-gama1);
            poli(i) = (poli(i)) - beta1*auxB(i));
            poli(i+1) = poli(i+1) + auxB(i+1);
        end
        auxA = auxB;
        auxB = poli; 
    end
endfunction
