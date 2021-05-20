
%% Creates a matlab structure with the plot colours 

cols.muted.teal = [68,170,153]./255;
cols.muted.wine = [136,34,85]./255;
cols.muted.rose = [204,102,119]./255;
cols.muted.sand = [221,204,119]./255;
cols.muted.cyan =[136,234,238]./255;
cols.muted.indigo =[51,34,136]./255;
cols.muted.purple =[170,68,153]./255;
cols.muted.olive =[153,153,51]./255;
cols.muted.green =[17,119,51]./255;



cols.vibrant.teal = [0,153,136]./255;
cols.vibrant.blue = [0,119,187]./255;
cols.vibrant.cyan = [51,187,238]./255;

cols.continuous.iridHex = ['#FEFBE9'; '#FCF7D5'; '#F5F3C1'; '#EAF0B5'; ...
                '#DDECBF'; '#D0E7CA'; '#C2E3D2'; '#B5DDD8'; '#A8D8DC'; ...
                '#9BD2E1'; '#8DCBE4'; '#81C4E7'; '#7BBCE7'; '#7EB2E4'; ...
                '#88A5DD'; '#9398D2'; '#9B8AC4'; '#9D7DB2'; '#9A709E'; ...
                '#906388'; '#805770'; '#684957'; '#46353A'];
            
% Iridescent continuous colour scheme
cols.continuous.iridRGB = hex2rgb(cols.continuous.iridHex);