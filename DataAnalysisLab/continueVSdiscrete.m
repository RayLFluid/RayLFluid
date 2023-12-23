%continuous
syms t;
f=sin(t);
dfdt=diff(f)

%discrete
nt = 51 %number of points
td = linspace(0,2*pi,nt);
sampfrq=1/(td(2)-td(1)) %sampling frequency
fd = sin(td);
gradf = gradient(fd,td);

%plot
f1=figure(1)
fplot(f,'LineWidth',2)
hold on
plot(td,fd,'ko','MarkerSize',5)
xlim([0, 2*pi])
hold off

f2=figure(2)
fplot(dfdt,'LineWidth',2)
hold on
plot(td,gradf,'ko','MarkerSize',5)
xlim([0, 2*pi])