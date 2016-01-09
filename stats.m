a=0;
b=1;

p=0.7;
count=0;
for i=1:10000000
    r = (b-a).*rand(1,1) + a;
    if r > p
        count=count+1;
    end
end

prob=count/10000000;
prob