
IDX = randperm(size(outsetPrey,1));
n=300;
IDX = IDX(1:n);


figure
set(gcf,'units','centimeters','position',[10,10,8.6,5.5])

hold on
box on
set(gca, 'YScale', 'log','XScale','log')
plot(outsetPrey(IDX,1),outsetPrey(IDX,2),'o','MarkerSize',4,'Color',cols.muted.cyan);
h=plot(outsetPred(IDX,1),outsetPred(IDX,2),'x','MarkerSize',4,'Color',cols.muted.purple);
ax = ancestor(h, 'axes');
ax.XAxis.FontSize = 6.5;
ax.YAxis.FontSize = 6.5;
xlim(ax,[1E-13,1E10]);
ylim(ax,[1E-13,1E10]);



xlabel('Log$_{10}$ size','FontSize',6.5,'Interpreter','latex') 
ylabel('Log$_{10}$ abundance','FontSize',6.5,'Interpreter','latex')

[BL,BLicons] = legend('Prey','Predators','Interpreter','latex','location','southwest','FontSize',6.5,'box','off');


axes('Position',[.63 .62 .24 .26])
box on
hold on
set(gca, 'YScale', 'log','XScale','log')
plot(outVec(1:2,1),outVec(1:2,2),'o','Color',cols.muted.teal,'MarkerSize',4);
plot(outVec(3:4,1),outVec(3:4,2),'x','Color',cols.muted.teal,'MarkerSize',4);
plot(outVec(5:6,1),outVec(5:6,2),'+','Color',cols.muted.teal,'MarkerSize',4);
plot(outVec(7:8,1),outVec(7:8,2),'^','Color',cols.muted.teal,'MarkerSize',4);
plot(outVec(9:10,1),outVec(9:10,2),'*','Color',cols.muted.teal,'MarkerSize',4);


xlabel('Log$_{10}$ Prey','Interpreter','latex','FontSize',6.5) 
ylabel('Log$_{10}$ Pred','Interpreter','latex','FontSize',6.5)
ax=gca;
xlim(ax,[1E-4,1E4])
ylim(ax,[1E-6,1E2])
ax.XTick = [1E-4,1E0,1E4];
ax.YTick = [1E-6,1E-2,1E2];
ax.XAxis.FontSize= 6.5;
ax.YAxis.FontSize= 6.5;



tightfig;