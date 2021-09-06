function [b_coronal] = counter_coronal(n)
    a = zeros(1,n);
    b = zeros(1,8);
    b_coronal = zeros(92,8);
    board = zeros(n);
    z = 0;
    x = 1;
    b_0 = 1;
    iteration = 1;
    while(~all(b, 'all')) && (iteration < 1000)
        switch x
            case 1
                for y=b_0:n
                    if ~board(y,1)
                        a(1) = y;
                        b(x) = y;
                        board = board_reset(a, n);
                    break
                    end
                end
            case 2
                for y=b_0:n
                    if ~board(y,2)
                        a(2) = y;
                        b(x) = y;
                        board = board_reset(a, n);
                        break
                    end
                end
                b_0 = 1;
                if b(x)==0
                    x = x - 1;
                    b_0 = b(x) + 1;
                    a(1) = 0;
                    b(x) = 0;
                    board = board_reset(a, n);
                    x = x - 1;
                end  
            case 3
                for y=b_0:n
                    if ~board(8,y)
                        a(y) = 8;
                        b(x) = y;
                        board = board_reset(a, n);
                        break
                    end
                end
                b_0 = 1;
                if b(x)==0
                    x = x - 1;
                    b_0 = b(x) + 1;
                    a(2) = 0;
                    b(x) = 0;
                    board = board_reset(a, n);
                    x = x - 1;
                end  
            case 4
                for y=b_0:n
                    if ~board(7,y)
                        a(y) = 7;
                        b(x) = y;
                        board = board_reset(a, n);
                        break
                    end
                end
                b_0 = 1;
                if b(x)==0
                    x = x - 1;
                    b_0 = b(x) + 1;
                    a(find(a==8)) = 0;
                    b(x) = 0;
                    board = board_reset(a, n);
                    x = x - 1;
                end     
            case 5
                for y=(n+1-b_0):-1:1
                    if ~board(y,8)
                        a(8) = y;
                        b(x) = n + 1 - y;
                        board = board_reset(a, n);
                        break
                    end
                end
                b_0 = 1;
                if b(x)==0
                    x = x - 1;
                    b_0 = b(x) + 1;
                    a(find(a==7)) = 0;
                    b(x) = 0;
                    board = board_reset(a, n);
                    x = x - 1;
                end     
            case 6
                for y=(n+1-b_0):-1:1
                    if ~board(y,7)
                        a(7) = y;
                        b(x) = n + 1 - y;
                        board = board_reset(a, n);
                        break
                    end
                end
                b_0 = 1;
                if b(x)==0
                    x = x - 1;
                    b_0 = b(x) + 1;
                    a(8) = 0;
                    b(x) = 0;
                    board = board_reset(a, n);
                    x = x - 1;
                end  
            case 7
                for y=(n+1-b_0):-1:1
                    if ~board(1,y)
                        a(y) = 1;
                        b(x) = n + 1 - y;
                        board = board_reset(a, n);
                        break
                    end
                end
                b_0 = 1;
                if b(x)==0
                    x = x - 1;
                    b_0 = b(x) + 1;
                    a(7) = 0;
                    b(x) = 0;
                    board = board_reset(a, n);
                    x = x - 1;
                end   
            case 8
                for y=(n+1-b_0):-1:1
                    if ~board(2,y)
                        a(y) = 2;
                        b(x) = n + 1 - y;
                        board = board_reset(a, n);
                        break
                    end
                end     
                b_0 = 1;
                if b(x)==0
                    x = x - 1;
                    b_0 = b(x) + 1;
                    a(find(a==1)) = 0;
                    b(x) = 0;
                    board = board_reset(a, n);
                    x = x - 1;
                end           
        end
        iteration = iteration + 1;
        x = x + 1;
    end
    z = z + 1;
    b_coronal(z,:) = b;
    a
    b
    fprintf("Iteraciones = %d.\n", iteration)
end

function [board] = board_reset(a, n)
    board = zeros(n);
    for z=1:n
        u = a(z);
        if u~=0            
            for x=1:n
                for y=1:n         
                    if ((u == x) || (z == y) || ((x-y) == (u-z)) || ((x+y) == (u+z)))
                        board(x,y) = 1;
                    end
                end
            end      
        end
    end
end