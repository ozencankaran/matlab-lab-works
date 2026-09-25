% Mandatory Task 1a
x = -pi:0.1:pi;
f1 = sin(x);

figure;
plot(x, f1);
xlabel('x');
ylabel('f(x) = sin(x)');
title('f(x) = sin(x)');
grid on;
axis([min(x) max(x) min(f1) max(f1)]);
xticks(-pi:pi/4:pi);
xticklabels({'-\pi','-3\pi/4','-\pi/2','-\pi/4','0','\pi/4','\pi/2','3\pi/4','\pi'});
legend('sin(x)');

% Mandatory Task 1b
f2 = 2*sin(x).*cos(x);
f3 = 3*sin(x).*cos(x);

figure;
plot(x, f2, 'LineWidth', 5);
hold on;
plot(x, f3, 'LineWidth', 5);
hold off;
xlabel('x');
ylabel('f(x)');
title('f(x) = 2sin(x)cos(x) and 3sin(x)cos(x)');
legend('2sin(x)cos(x)', '3sin(x)cos(x)', 'Location', 'best');
grid on;
axis([min(x) max(x) min([f2 f3]) max([f2 f3])]);

% Mandatory Task 2a
t3d = 0:pi/20:4*pi;
xt = sin(t3d);
yt = cos(t3d);
zt = tan(t3d);

figure;
plot3(xt, yt, zt, 'o');
xlabel('x(t) = sin(t)');
ylabel('y(t) = cos(t)');
zlabel('z(t) = tan(t)');
title('3D plot of x(t), y(t), z(t)');
grid on;

%signal
A = 7; f = 9; sigma = 1.2; U1 = 4.5; U2 = 2.5;
t = 0:0.002:1;
s = A * cos(2*pi*f*t);
n = sigma * randn(size(t));
signal = s + n;
filtered = signal;
filtered(abs(filtered) < U2) = 0;
selected = signal(signal > U1);
t_selected = t(signal > U1);
[maxVal, maxIdx] = max(filtered);
[minVal, minIdx] = min(filtered);

yMinAll = min(signal) - 1;
yMaxAll = max(signal) + 1;

% Complementary Task a
figure;
subplot(2,1,1);
plot(t, signal, '-.r');
hold on;
plot(t, filtered, '-k');
plot([t(1) t(end)], [U1 U1]);
plot([t(1) t(end)], [U2 U2], 'y', 'LineWidth', 2);
hold off;
xlabel('Time (s)');
ylabel('Voltage (V)');
title('Original and Filtered Signal', 'Color', [0.5 0 0.5], 'FontSize', 14);
legend('Original signal', 'Filtered signal', 'U1', 'U2');
grid on;
axis([t(1) t(end) yMinAll yMaxAll]);

% Complementary Task b
subplot(2,1,2);
stem(t_selected, selected);
hold on;
plot(t(maxIdx), maxVal, 'r*');
plot(t(minIdx), minVal, 'ks');
hold off;
xlabel('Time (s)');
ylabel('Voltage (V)');
title('Signal Samples Exceeding U1', 'Color', [0.5 0 0.5], 'FontSize', 14);
legend('Selected samples', 'Max value', 'Min value');
grid on;
axis([t(1) t(end) yMinAll yMaxAll]);