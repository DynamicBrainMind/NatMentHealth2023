%% PubMed plot
% Load data
MH=csvread('MH_PubMed_Timeline_Results_by_Year.csv',2,0);
Total=csvread('Total_PubMed_Timeline_Results_by_Year.csv',2,0);
load('cdcol.mat');

% Plot
fig=figure('Position',[0 0 900 450]);
plot(Total(:,1),Total(:,2),'Color',cdcol.darkulamarine,'LineWidth',2);
hold on;
plot(MH(:,1),MH(:,2),'Color',cdcol.scarlet,'LineWidth',2); 
set(gca,'FontSize',24,'FontName','Arial','TickDir','out','box','off');
xticks(MH(end,1):5:MH(1,1))
xlim([MH(end,1) MH(1,1)])
xlabel('Year')
ylabel('Number of Publications')
title('Articles on PubMed','Fontweight','normal','FontName','Arial')
legend(['Spontaneous Thought'],['Spontaneous Thought & Mental Health'],'Location','best')

print('-opengl','-r300','-dpng',['Pubmed_articles.png']);      

