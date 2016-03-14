%%
clear all;
clc;

FigHandle = figure;
set(FigHandle,'units','inches', 'Position', [1, 1, 18.4, 4.6]);
  
%%
load simulation_data.mat

left    = 80;
bottom  = 20;
gap     = 40;
width   = 300;
height  = width;
colorbar_height = 20;
label_gap  = 40;
colorbar_ticks_gap = 10;

row_height = bottom+height+bottom+colorbar_height+colorbar_ticks_gap;
colorbar_bottom = bottom+height+gap/8+label_gap;
font_size      = 20;
font_size_axes = 15;
line_width     = 2;

axes('units','pixels', 'Position', [left bottom+label_gap width height]);
    Z = min([max(max(U_0)) abs(min(min(U_0)))]);
    h1 = imagesc(U_0/Z)
    ax = findobj(gca,'type','axes');
    p1 = get(ax,'position');
    h1c=colorbar('location','manual','units','pixels', 'position',[left colorbar_bottom width colorbar_height]);
    set(h1c,'xaxisloc','top','LineWidth',line_width);
    set(ax,'pos',p1) % back to normal
    ylabel('y (mm)','FontSize',font_size)
    zlab = get(h1c,'xlabel');
%     set(zlab,'String','Probability','FontSize',font_size);   
    xlabel('x (mm)','FontSize',font_size)
    xlim([0 250])
    ylim([0 250])
    set(gca,'XTick',[0 50 100 150 200 250],'XTickLabel',{'0', '50', '100', '150', '200', '250'},'LineWidth',line_width)
    set(gca,'YTick',[0 50 100 150 200 250],'YTickLabel',{'0', '50', '100', '150', '200', '250'},'FontSize',font_size_axes)
    colormap(redblue)
    
axes('units','pixels', 'Position', [left+width+gap bottom+label_gap width height]);
    Z = min([max(max(U_10)) abs(min(min(U_10)))]);
    h2 = imagesc(U_10/Z)
    ax = findobj(gca,'type','axes');
    p2 = get(ax,'pos');
    h2c=colorbar('location','manual','units','pixels', 'position',[left+width+gap colorbar_bottom width colorbar_height]);
    set(h2c,'xaxisloc','top','LineWidth',line_width);
    set(ax,'pos',p2) % back to normal
%     zlab = get(h2c,'xlabel');
% %     set(zlab,'String','Probability','FontSize',font_size); 
    xlabel('x (mm)','FontSize',font_size)
    xlim([0 250])
    ylim([0 250])
    set(gca,'XTick',[0 50 100 150 200 250],'XTickLabel',{'0', '50', '100', '150', '200', '250'},'LineWidth',line_width)
    set(gca,'YTick',[0 50 100 150 200 250],'YTickLabel',{'', '', '', '', '', ''},'FontSize',font_size_axes)
    
axes('units','pixels', 'Position', [left+2*width+2*gap bottom+label_gap width height]);
    load simulation_data_branchiness.mat
    Z = min([max(max(U_1)) abs(min(min(U_1)))]);
    h1 = imagesc(U_1/Z)
    ax = findobj(gca,'type','axes');
    p1 = get(ax,'position');
    h1c=colorbar('location','manual','units','pixels', 'position',[left+2*width+2*gap colorbar_bottom width colorbar_height]);
    set(h1c,'xaxisloc','top','LineWidth',line_width);
    set(ax,'pos',p1) % back to normal
    zlab = get(h1c,'xlabel');
    set(zlab,'String','Left or Right Ocular Dominance Defined by Sign','FontSize',font_size); 
    xlabel('x (mm)','FontSize',font_size)
%     ylabel('y (mm)','FontSize',font_size)
    xlim([0 250])
    ylim([0 250])
    set(gca,'XTick',[0 50 100 150 200 250],'XTickLabel',{'0', '50', '100', '150', '200', '250'},'FontSize',font_size_axes)
    set(gca,'YTick',[0 50 100 150 200 250],'YTickLabel',{'', '', '', '', '', ''},'LineWidth',line_width)
    
axes('units','pixels', 'Position', [left+3*width+3*gap bottom+label_gap width height]);
    Z = min([max(max(U_2)) abs(min(min(U_2)))]);
    h2 = imagesc(U_2/Z)
    ax = findobj(gca,'type','axes');
    p2 = get(ax,'pos');
    h2c=colorbar('location','manual','units','pixels', 'position',[left+3*width+3*gap colorbar_bottom width colorbar_height]);
    set(h2c,'xaxisloc','top','LineWidth',line_width);
    set(ax,'pos',p2) % back to normal
%     zlab = get(h2c,'xlabel');
%     set(zlab,'String','Left or Right Ocular Dominance Defined by Sign','FontSize',font_size); 
    xlabel('x (mm)','FontSize',font_size)
    xlim([0 250])
    ylim([0 250])
    set(gca,'XTick',[0 50 100 150 200 250],'XTickLabel',{'0', '50', '100', '150', '200', '250'},'LineWidth',line_width)
    set(gca,'YTick',[0 50 100 150 200 250],'YTickLabel',{'', '', '', '', '', ''},'FontSize',font_size_axes)
    
axes('units','pixels', 'Position', [left+4*width+4*gap bottom+label_gap width height]);
    Z = min([max(max(U_3)) abs(min(min(U_3)))]);
    h2 = imagesc(U_3/Z)
    ax = findobj(gca,'type','axes');
    p3 = get(ax,'pos');
    hc=colorbar('location','manual','units','pixels', 'position',[left+4*width+4*gap colorbar_bottom width colorbar_height]);
    set(hc,'xaxisloc','top','LineWidth',line_width);
    set(ax,'pos',p3) % back to normal    
    xlabel('x (mm)','FontSize',font_size)
    xlim([0 250])
    ylim([0 250])
    set(gca,'XTick',[0 50 100 150 200 250],'XTickLabel',{'0', '50', '100', '150', '200', '250'},'LineWidth',line_width)
    set(gca,'YTick',[0 50 100 150 200 250],'YTickLabel',{'', '', '', '', '', ''},'FontSize',font_size_axes)