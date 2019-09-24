function[R] = cholesky(A)
    n = size(A)  
    for k=1:n 
        A(k,k)=sqrt(A(k,k)) 
        A(k+1:n,k)=A(k+1:n,k)/A(k,k)
        for j = k+1 :n 
            A(j:n,j)=A(j:n,j)-A(j,k)*A(j:n,k)
        end 
    end 
    for i=1 : n
        for j=1 : n
            if i<j then
                R(i,j)=0
            end
        end 
    end
    R=A
endfunction
