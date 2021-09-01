function [sol, t_tot] = nqueens(n)
    a = zeros(1,n+1);
    sol_list = zeros(1,2);
    iteration = 1;
    sol = 0;
    flag = 0;
    u_0 = 1;
    k = 1;
    tic
    while (~flag)
       while 1
           if k < n+1
               a(k) = counter(a,k,n,u_0);
           else
               a(k) = 0;
           end          
           
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
           else
               if k == 1
                   sol_list(1) = sol_list(2);
                   sol_list(2) = sol;
               end
           end   
           
           if (k == 1) && (a(k) == ceil(n/2 + 1))
               if (rem(n,2) == 0)
                   sol = 2 * sol_list(2);
               else
                   sol = sol_list(1) + sol_list(2);
               end
               flag = 1;
               break
           end   
           
           k = k + 1;
           if k == n+1
               sol = sol +1;
               break
           end
       end
       iteration = iteration + 1;
    end
    t_tot = toc;
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