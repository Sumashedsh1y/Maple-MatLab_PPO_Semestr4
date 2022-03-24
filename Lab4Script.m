z1M=[1,-1,1;2,1,1;1,1,2]
z1V=[5;6;4]
z1=inv(z1M)*z1V
z2M=[4,1,0;1,4,0;-1,1,5]
z2V=[5;6;4]
z2C=[z2M z2V]
z2d=det(z2M)
z2d1=det(z2C(:,[4,2,3]))
z2d2=det(z2C(:,[1,4,3]))
z2d3=det(z2C(:,[1,2,4]))
z2=[z2d1/z2d;z2d2/z2d;z2d3/z2d]
syms x
z3i1=int(x*exp(-x^2))
z3i2=int(1/(x*log(x)*log(log(x))))
z3i3=int(x/(cos(x))^2,x,0.0,1.0)
z3i3_2=quad(@(x) (x./(cos(x)).^2),0,1)
z3i4=int((x+4)/sqrt(9+x^2),x,0.0,3.0)
z3i4_2=quad(@(x) ((x+4)./sqrt(9+x.^2)),0,3)
z4i1=int(1/(x*sqrt(1+log(x))),x,1,exp(3))
syms t
z4i2=int(16*cos(t)^3*(diff(2*sin(t)^3, t)),t,0,(1/4)*pi)
z5=int(sqrt((diff(4*(t-sin(t)), t))^2+(diff(4*(1-cos(t)), t))^2),t,(1/2)*pi,2*pi*(1/3))
ezplot('1/(1+cos(x))',[-40 40])
ezpolar('5*sin(5*t)', [0 2*pi])
ezplot('t*sin(t)', 't*cos(t)',[0 2*pi])
solve('x^2-y^2+z^2-9','z')
ezsurf('-(- x^2 + y^2 + 9)^(1/2)')
hold on
ezsurf('(- x^2 + y^2 + 9)^(1/2)')
axis auto
[X,Y,Z]=meshgrid(-10:0.5:10,-10:0.5:10,-10:0.5:10);
slice(X,Y,Z,X.^2 - Y.^2 + Z.^2 - 9,0,0,0)