function [board] = boolean_board(a, k, n)
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