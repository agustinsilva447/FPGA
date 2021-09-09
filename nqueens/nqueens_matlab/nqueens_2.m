function [sol, t_tot] = nqueens_2(n)
    board = zeros(n);
    a = zeros(1,n+1);
    sol_list = zeros(1,2);
    sol = 0;
    flag = 0;
    u_0 = 1;
    k = 1;
    tic
    
    while (~flag)
       while 1
           if k < n+1
               [a(k), board] = counter_2(k, n, u_0, board);              
           else
               a(k) = 0;
           end          
           
           u_0 = 1;
           if a(k) == 0
               k = k-1;
               u_0 = a(k) + 1;
               a(k) = 0;
               board = board_reset(a, k, n);
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
    end
    t_tot = toc;
end

function [u, board] = counter_2(k, n, u_0, board)
    for u = u_0:n
        if (board(u, k) == 0)
            board = board_update(board, u, k, n, 1);
            return
        end
    end
    u = 0;
    return 
end

function [board] = board_update(board, u, k, n, value)
    for x=1:n
        for y=k:n
            if ((u == x) || ((x-y) == (u-k)) || ((x+y) == (u+k)))
                board(x,y) = value;
            end
        end
    end       
end

function [board] = board_reset(a, k, n)
    board = zeros(n);
    for z=1:k
        u = a(z);
        if u~=0            
            for x=1:n
                for y=z:n         
                    if ((u == x) || ((x-y) == (u-z)) || ((x+y) == (u+z)))
                        board(x,y) = 1;
                    end
                end
            end      
        end
    end
end