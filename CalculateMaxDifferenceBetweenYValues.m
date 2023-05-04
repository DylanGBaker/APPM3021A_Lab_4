function maxDifference = CalculateMaxDifferenceBetweenYValues(y,yq)
maxDifference = 0;
for i = 1:size(y,1)
    currentDifference = abs(y(i,1) - yq(i,1));
    if abs(currentDifference) > maxDifference
        maxDifference = currentDifference;
    end
end
end