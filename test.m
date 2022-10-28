norm_f_sq = -0.25 + 2*pi^2/3;
a0 = -1;

alpha_1 = -0.5;
beta_1 = pi;
norm_error_sq = norm_f_sq - abs(a0)^2 - abs(alpha_1)^2/2 - abs(beta_1)^2/2;
n = 100;

for ki=2:n
    disp(ki)
    alpha_k = 2/(ki^2 - 1);
    beta_k = 0;
    norm_error_sq = norm_error_sq - abs(alpha_k)^2/2 - abs(beta_k)^2/2;
end

disp(sqrt(norm_error_sq))
