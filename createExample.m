xPoints = rand(1,13);
yPoints = rand(1,13);

for a = 1:13
    for b = 1:13
        temp1 = [xPoints(a), yPoints(a)];
        temp2 = [xPoints(b), yPoints(b)];
        finalDist(a,b) = pdist2(temp1, temp2);
    end
end
normalizedDist = finalDist*10
roundedDist = floor(normalizedDist)