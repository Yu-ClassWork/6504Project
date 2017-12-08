close all
load matlab.mat;
figure(1);
a = 1;
hold on
for a = 1:2:18
    if a >= 18
        break;
    end
    plot(plotData([2 7],a), plotData([2 7],a+1), 'DisplayName', num2str(plotData(1,a)))
end

leg = legend('show', 'location', 'southeast');
title(leg, 'Probability of reaching the site')
xlim([130 150])
ylim([0.2 1])
xlabel('Visited Site Reward (1 site/50 reward)')
ylabel('Minimum Expected Negative Rewards')
title('Pareto-optimal Front')
