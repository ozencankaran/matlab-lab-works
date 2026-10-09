% Mandatory Task 1a
x = linspace(-2, 2, 30);
y = linspace(-2, 2, 30);
[X, Y] = meshgrid(x, y);
Z = sin((X.^2 + Y.^2)/20) .* exp(-(X.^2 + Y.^2));

figure;
surf(X, Y, Z);
colormap(jet);
shading interp;
view(39, 30);
xlabel('x');
ylabel('y');
zlabel('f(x,y)');
title('f(x,y) = sin((x^2+y^2)/20) * e^{-(x^2+y^2)}');

% Mandatory Task 1b
x2 = linspace(-1, 1, 30);
y2 = linspace(-1, 1, 30);
[X2, Y2] = meshgrid(x2, y2);
R = sqrt(X2.^2 + Y2.^2);
Z2 = exp(R.^2);

figure;
surf(X2, Y2, Z2);
colormap(cool);
shading interp;
view(70, 30);
xlabel('x');
ylabel('y');
zlabel('z(r)');
title('z(r) = e^{r^2}');

% Complementary Task
x3 = linspace(-2, 2, 30);
y3 = linspace(-2, 2, 30);
[X3, Y3] = meshgrid(x3, y3);
Z3 = 1 - (X3.^2 + Y3.^2);

figure;
surf(X3, Y3, Z3, 'FaceColor', [0.4 0.1 0.6]);
xlabel('x');
ylabel('y');
zlabel('z(x,y)');
title('z(x,y) = 1 - (x^2 + y^2)');
