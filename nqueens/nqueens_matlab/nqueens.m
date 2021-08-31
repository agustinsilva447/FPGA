function [sol_list] = nqueens(n)
    a = zeros(1,n+1);
    iteration = 1;
    sol_list = 0;
    flag = 0;
    u_0 = 1;
    k = 1;
    while (~flag)
       while 1
           a(k) = counter(a,k,n,u_0);
           u_0 = 1;
           if a(k) == 0
               k = k-1;
               if k == 0                  
                   flag = 1;
                   break
               end
               u_0 = a(k) + 1;
               a(k) = 0;
               k = k - 1;
           end
           k = k + 1;
           if k == n+1
               sol_list = sol_list +1;
               break
           end
       end
       iteration = iteration + 1;
    end
end

function [u] = counter(a,k,n,u_0)
    for u = u_0:n
        count = 0;
        for j = 1:k
            if ((u~=a(j)) && (abs(u - a(j))~=(k-j)))
                count = count + 1;
            else
                break
            end
        end
        if count == k
            return
        end
    end
    u = 0;
    return 
end