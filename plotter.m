close all
load matlab.mat;
figure(1);
a = 1;
hold on
% for a = 1:2:14
%     if a >= 14
%         break;
%     end
%     plot(plotData([2 7],a), plotData([2 7],a+1), 'DisplayName', num2str(plotData(1,a)))
% end

plot(plotData([2 22],1), plotData([2 22],2), 'DisplayName', num2str(plotData(1,1)))
plot(plotData([2 22],3), plotData([2 22],4), 'DisplayName', num2str(plotData(1,3)))
plot(plotData([2 19],5), plotData([2 19],6), 'DisplayName', num2str(plotData(1,5)))
plot(plotData([2 21],7), plotData([2 21],8), 'DisplayName', num2str(plotData(1,7)))
plot(plotData([2 20],9), plotData([2 20],10), 'DisplayName', num2str(plotData(1,9)))
plot(plotData([2 25],11), plotData([2 25],12), 'DisplayName', num2str(plotData(1,11)))
plot(plotData([2 21],13), plotData([2 21],14), 'DisplayName', num2str(plotData(1,13)))

leg = legend('show', 'location', 'southeast');
title(leg, 'Probability of reaching the site')
% xlim([130 150])
% ylim([0.2 1])
xlabel('Visited Site Reward (1 site/50 reward)')
ylabel('Minimum Expected Negative Rewards')
title('Pareto-optimal Front')
