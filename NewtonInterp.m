function [co, T] = NewtonInterp(x,y)
format long;
T = zeros(size(x, 1) * 2 - 1, size(x,1));
co = zeros(size(x,1), 1);
x1 = reshape([x'; zeros(size(x'))],[],1);
y1 = reshape([y'; zeros(size(y'))],[],1);
enteredCo = false;

for col = 1:size(T,2)
    for row = 1:size(T,1)
        if col == 1
            if mod(row, 2) ~= 0
                T(row,col) = y1(row,col);
                if ~enteredCo
                    co(col, 1) = T(row,col);
                    enteredCo = true;
                end
            end
        elseif mod(col, 2) == 0
            if (row + (col - 1)) <= size(T, 1) && mod(row, 2) == 0 && row >= col
                T(row,col) = (T(row + 1, col - 1) - T(row - 1, col - 1)) / (x1(row + (col - 1), 1) - x1(row - (col - 1), 1));
                if ~enteredCo
                    co(col, 1) = T(row,col);
                    enteredCo = true;
                end
                disp(T);
            end
        elseif mod(col, 2) ~= 0
            if (row + (col - 1)) <= size(T, 1) && mod(row, 2) ~= 0 && row >= col
                T(row,col) = (T(row + 1, col - 1) - T(row - 1, col - 1)) / (x1(row + (col - 1), 1) - x1(row - (col - 1), 1));
                if ~enteredCo
                    co(col, 1) = T(row,col);
                    enteredCo = true;
                end
                disp(T);
            end
        end
    end
    enteredCo = false;
end
end