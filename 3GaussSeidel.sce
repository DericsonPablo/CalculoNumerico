function[x]=gaussSeidel(A,b,e,x0)

    I = eye(A)
    p = 10
    n=length(b)
    x = x0
    x1 = x
    i=0
    s=0
    for i=1:n
        bc(i) = b(i)/A(i, i)
    end
    num = 0
        while p > e
            for i=1:n 
                num = 0
                for j=1:n
                    if j <> i then
                        num = num + A(i,j)*x(j)
                    end;
                end;
        x(i) = (1/A(i,i))*(b(i)-num)
            end
        p = norm((A*x)-b)
        end

endfunction
