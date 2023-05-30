x=[];
x(1,:) = [-0.3,0];
f = [];
a = 0.1;
b = 0.6;
for i = 1: 1: 50
    f(i) = exp(x(i,1)+3*x(i,2)-0.1)+exp(x(i,1)-3*x(i,2)-0.1)+exp(-x(i,1)-0.1);
    df1 = exp(x(i,1)+3*x(i,2)-0.1)+exp(x(i,1)-3*x(i,2)-0.1)-exp(-x(i,1)-0.1);
    df2 = 3*exp(x(i,1)+3*x(i,2)-0.1)-3*exp(x(i,1)-3*x(i,2)-0.1);
    x(i+1,:) = x(i,:)-a*[df1,df2];  
    a=a*b;
    plot(i,f(i),'*');
    hold on;
end
