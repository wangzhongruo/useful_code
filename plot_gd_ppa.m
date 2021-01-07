function plot_gd_ppa(f1,f2,error_index,plot_or_not)
%% plot function value comparison
figure
semilogy(1:1:(size(f1,1)),f1,1:1:(size(f2,1)),f2,'LineWidth',5)
% hold on 
% semilogy(1:1:size(function_val_ssn,1),function_val_ssn,'b-o')

xlabel('Iteration','FontName','Times New Roman')
ylabel('$f(U) + h(UU^T)$','FontName', 'Times New Roman','Interpreter','LaTex')

legend('GD','SSN')
fname = sprintf ('objective_plot_%i',error_index);
dname = 'plots';

set(gcf,'Units','Inches');
pos = get(gcf,'Position');
set(gca, 'LineWidth',1.8,'FontSize',20);
set(gcf,'Color', 'w','PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)])
% print(gcf,fullfile(dname,fname),'-dpdf','-r0')
if plot_or_not
saveas(gcf, fullfile(dname,fname),'pdf');
end
end