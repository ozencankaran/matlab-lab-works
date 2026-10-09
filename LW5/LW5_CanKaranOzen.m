format compact

% 1a. Data structures
currency(1).name = 'USD';
currency(1).sell = 1.10;
currency(1).buy = 1.08;

currency(2).name = 'GBP';
currency(2).sell = 0.87;
currency(2).buy = 0.85;

currency(3).name = 'PLN';
currency(3).sell = 4.35;
currency(3).buy = 4.25;

disp(currency(2))

% 1b
currency(2).buy = 0.80;
disp(currency(2))

% 2. Operation flow control
A = round(10 * rand + 1);
guess = input('Guess the number: ');
while guess ~= A
    if guess < A
        disp('Your guess is too low')
    else
        disp('Your guess is too high')
    end
    guess = input('Guess the number: ');
end
disp('Correct!')

% P1. Complementary task
s = input('Enter a sentence: ', 's');
result = '';
count = 0;
for k = 1:length(s)
    if s(k) == ' '
        count = count + 1;
    else
        result = [result s(k)];
    end
end
disp(result)
disp('Removed spaces:')
disp(count)
