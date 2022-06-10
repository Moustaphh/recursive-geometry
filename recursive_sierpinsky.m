clear ,close all


z1=1;
z2=exp(1i*2*pi/3);
z3=conj(z2);
z4=exp(-1i*pi/3);
basic_pattern=cumsum([0 z1 z2 z3 NaN]);%triangle


limit=20;
sierp(1,limit,basic_pattern);

function sierp(counter,limit,basic_pattern)
z2=exp(1i*2*pi/3);
z3=conj(z2);
z4=exp(-1i*pi/3);
hold on

axis equal
new_pattern=[basic_pattern,basic_pattern+(z3*counter) ,basic_pattern+(z4*counter)];
counter=counter*2;

if counter<=limit^2    
    sierp(counter,limit,new_pattern);
else 
    plot(new_pattern,'g')

end 
end