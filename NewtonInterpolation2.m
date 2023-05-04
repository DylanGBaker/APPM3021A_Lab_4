function yq = NewtonInterpolation2(x,y,xq)
format long
[coefficientMatrix, ~] = NewtonInterp(x,y);
yq = zeros(size(xq,1),1);
for i = 1:size(xq,1)
    for j = 1:size(coefficientMatrix,1)
        temp = coefficientMatrix(j,1);
        k = 1;
        while k < j
            %disp(xq(i,1));
            %disp(x(k,1));
            temp = temp * (xq(i,1) - x(k,1));
            k = k + 1;
        end
        yq(i,1) = yq(i,1) + temp;
        %disp(yq(i,1));
    end
end
end