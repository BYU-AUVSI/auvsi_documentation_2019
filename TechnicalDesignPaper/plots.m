clear all
clc

names = [Inf;
         -7.5;
         -7.0;
         -8.0;
         -8.5;
         -6.5;
         -4.5;
         0.0;
         Inf;
         Inf;
         Inf;
         Inf];
     
window = [-3,14,0,1.3;
          -3,14,0,10;
          0,90,0,1.3;
          -3,14,-0.15,0.2];
      
position = [
            0.1,0.55,0.35,0.35;
            0.58,0.55,0.35,0.35
            0.1,0.1,0.35,0.35;
            0.58,0.1,0.35,0.35;
            ];
      
y = [0,0];
x = [-100,100];

line_width = [Inf;
             1.5;
             1;
             1;
             1;
             1;
             1;
             1.5;
             Inf;
             Inf;
             Inf;
             Inf];

colors = [0,0,0;
          121,189,252;
          0,0,0;
          0,0,0;
          0,0,0;
          0,0,0;
          0,0,0;
          216,235,253;
          0,0,0;
          0,0,0;
          0,0,0;
          0,0,0]/255;
      
colors(3:7) = flipud(colors(3:7));
style = ["throw";
             "-";
             "-";
             "-";
             "-";
             "-";
             "-";
             "-";
             "throw";
             "throw";
             "throw";
             "throw"];
% keep 8->2
% keep [8,7,6,3,2,4,5]
skip = [1,9,10,11,12,7,6,3,4,5];%[2,3,4,5,6,7,8,9,10,11,12];

x_labels = ["\alpha - Angle of Attack (°)";
            "\alpha - Angle of Attack (°)";
            "V_{a} - Velocity (m/s)";
            "\alpha - Angle of Attack (°)";];
y_labels = ["C_{L} - Lift Coeff.";
            "L/D - Lift to Drag Ratio";
            "C_{L} - Lift Coeff.";
            "C_{m} - Pitching Moment Coeff.";];

data_CL_alpha = csvread('CL_alpha.csv',1,0);
data_CL_CD = csvread('CL_CD.csv',1,0);
data_CL_V = csvread('CL_V.csv',1,0);
data_Cm_alpha = csvread('Cm_alpha.csv',1,0);

data = {data_CL_alpha,data_CL_CD,data_CL_V,data_Cm_alpha};

for i = 1:length(data)
    seperated_data = {};
    for j = 1:length(data{i}(1,:))
        if ~all(data{i}(:,j)==0)
            seperated_data{end+1} = data{i}(:,j);
        end
    end
    data{i} = seperated_data;
end

for i = 1:length(data)
    combined_data = {};
    for j = 1:2:length(data{i})
        combined_data{end+1} = [data{i}{j},data{i}{j+1}];
    end
    data{i} = combined_data;
end

for i = 1:length(data)
    for j = 1:length(data{i})
        left = find(data{i}{j}(:,1)~=0,1,'last');
        right = find(data{i}{j}(:,2)~=0,1,'last');
        
        if ~isempty(left) && ~isempty(right) && (left==right) && (right~=length(data{i}{j}(:,1)))
            data{i}{j} = data{i}{j}(1:left,:);
        end
    end
end

options = 1:length(data{i});
options(skip) = [];
names = names(options);
line_width = line_width(options);
colors = colors(options,:);
style = style(options);
for i = 1:length(data)
    data{i} = data{i}(options);
end

[names,I] = sort(names);
names = flipud(names);
names = string(names) + "°";

I = flipud(I);
for i = 1:length(data)
    data{i} = data{i}(I);
end
line_width = line_width(I);
colors = colors(I,:);
style = style(I);

% colors([2,3,4,6,7],:) = flipud(colors([2,3,4,6,7],:));

if round(sqrt(length(data))) == sqrt(length(data))
    plot_index = [sqrt(length(data)),sqrt(length(data))];
else
    plot_index = [length(data),1];
end

fig = figure(1);clf
ax = [];
for i = 1:length(data)
    ax(end+1) = axes('Position',position(i,:));
    hold on
    plot(x,y,'--k','linewidth',1.5)
    plot(y,x,'--k','linewidth',1.5)
    lines = [];
    for j = 1:length(data{i})
        lines(end+1) = plot(data{i}{j}(:,1),data{i}{j}(:,2),'LineStyle',style(j),'Color',colors(j,:),'linewidth',line_width(j));
        set(gca,'fontsize',10)
    end
    grid on
    xlabel(x_labels(i))
    ylabel(y_labels(i))
    axis(window(i,:))
end
points(1) = plot(7,0,'.','Color','g','markersize',25);
points(2) = plot(-2.5,0,'.','Color','r','markersize',25);
plot(7,0,'ok','markersize',7);
plot(-2.5,0,'ok','markersize',7);
legend(fliplr(points),["Original Trim";"Modified Trim"])

dim = [.3 .67 .3 .3];
str = '\bf{Tail Incidence Angle:}';
annotation('textbox',dim,'String',str,'EdgeColor','none');

hL = legend(ax(3),lines,names);
% Programatically move the Legend
newPosition = [0.5,0.85,0.2,0.2];
newUnits = 'normalized';
set(hL,'position', newPosition,'Units', newUnits,'Orientation','horizontal');