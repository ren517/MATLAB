%% data
y = [100 102 108 117 135 178 198 241 290 349];
y_hat = [93 108 118 117 141 170 196 249 296 359];
n = length(y);
%% sse
SSE = sum((y - y_hat).^2); % 489;

%% mse
MSE = SSE / n; % 48.9

%% rmse
RMSE = sqrt(MSE); % 6.9929

%% mae
MAE = sum(abs(y_hat - y)) / n; %6.30


%% 测试函数
x = 1 : 10;
Sphere = sum(x.^2); %385

Rastrigin = sum(x.^2 - 10 * cos(2 * pi * x) + 10); %385

Griewank = 1 / 4000 * Sphere - prod(cos(x ./sqrt(1:10))) + 1;

temp1 = x(1:end-1);
temp2 = x(2:end);
Rosenbrock = sum(100 * (temp2 - temp1.^2).^2 + (temp1 - 1).^2); % 1109904
