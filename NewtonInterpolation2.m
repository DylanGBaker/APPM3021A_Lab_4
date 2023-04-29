function yq = NewtonInterpolation2(x,y,xq)
[coefficientMatrix, tMatrix] = NewtonInterp(x,y);
disp(coefficientMatrix);
disp(tMatrix);
yq = xq;
end