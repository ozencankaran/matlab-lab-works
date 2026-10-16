function F = kelv2far(K)
% KELV2FAR converts temperature from Kelvin to Fahrenheit.
% Usage: F = kelv2far(K)
% Input:  K - temperature in Kelvin (number or vector)
% Output: F - temperature in Fahrenheit
% Formula: F = K * 9/5 - 459.67
F = K * 9/5 - 459.67;
end
