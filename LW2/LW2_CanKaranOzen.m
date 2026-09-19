% 1
a = 10:-1:-15;
b = log2(a);
c = a ./ b;
disp(c.');

% 2
Cm1 = pi/2 : pi/2 : 3*pi/2;
Cm2 = -1:1;
Cm3 = -3:-1:-5;
C = [Cm1; Cm2; Cm3];
rowSums = sum(C, 2);
disp(rowSums);

% 3
A = 7; f = 9; sigma = 1.2; U1 = 4.5; U2 = 2.5;
t = 0:0.002:1;
s = A * cos(2*pi*f*t);
n = sigma * randn(size(t));
signal = s + n;
selected = signal(signal > U1);
filtered = signal;
filtered(abs(filtered) < U2) = 0;
numUnfiltered = numel(signal);
numSelected = numel(selected);
minVal = min(filtered);
maxVal = max(filtered);
fprintf('Unfiltered sample count: %d\n', numUnfiltered);
fprintf('Samples above U1: %d\n', numSelected);
fprintf('Filtered signal min: %.4f V, max: %.4f V\n', minVal, maxVal);

% Complementary
A2 = input('Enter vector A: ');
n2 = length(A2);
idx = 1:n2;
B2 = A2(mod(idx,2) == 0);
C2 = A2(mod(idx,2) == 1);
C2 = C2(end:-1:1);
disp('vector B is:');
disp(B2);
disp('vector C is:');
disp(C2);