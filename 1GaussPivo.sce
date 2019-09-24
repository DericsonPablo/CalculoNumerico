function[x] = GaussPivo(A,B)  
   
    n = length(B);
    aux = 0;
    auxb = 0;
    
    for k = 1: n-1
      
            maior_posic = k;
            maior = A(k,k); 
            
            for z = k: n 
               aux = abs(A(z,k));
                  
             if(aux > maior)
                 maior = aux;
                 maior_posic = z; 
             end
             
         end
         
         aux = 0;
                
               auxb = B(maior_posic);
               B(maior_posic) = B(k);
               B(k) = auxb;
               
         
         for z = 1: n
               
               aux = A(k,z);
               A(k,z) = A(maior_posic,z);
               A(maior_posic,z) = aux;
               
         end  
       
        for i = k+1: n

          aux = A(i,k)/A(k,k);
             
            for j = k: n    
                 A(i,j)  = A(i,j)- A(k,j)*aux;
           end
        
           B(i) = B(i) - B(k)*aux;
             end
       
   end 

   
endfunction


 
        
