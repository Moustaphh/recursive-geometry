clear, close all
hold on
axis equal

z1=1; % = _
z2=exp(1i*pi/3); % = /
z3=conj(z2); % = \
basic_pattern=cumsum([0 z1 z2 z3 z1 ]); %basic pattern _/\_
depth=5;
fkoch(depth,basic_pattern);

function fkoch(depth,basic_pattern)
z1=1;
z2=exp(1i*pi/3);
z3=conj(z2); 


new_basic_pattern=[basic_pattern*(1/3) ,NaN,basic_pattern*(1/3).*z2+z1,NaN,basic_pattern.*(1/3).*z3+(z1+z2),NaN,basic_pattern.*(1/3)+2*z1];
final_fig=[new_basic_pattern,new_basic_pattern*z3^2+3*z1,new_basic_pattern*z2^2+3*z3]; % \/

depth=depth-1;
if depth>0    
    fkoch(depth,new_basic_pattern);
else
    plot(final_fig);
end 
end

