function mycolormap = paulTolColorMaps(m,type)

%% color scheme 
% colorblind friendly palette taken from Paul Tol's website
% https://personal.sron.nl/~pault/

load('paulTolColorMaps.mat')

numBaseCols = size(type,1);

cindex = linspace(1,numBaseCols,m);
r = interp1([1:numBaseCols],type(:,1),cindex);
g = interp1([1:numBaseCols],type(:,2),cindex);
b = interp1([1:numBaseCols],type(:,3),cindex);
mycolormap = [r' g' b'];

end