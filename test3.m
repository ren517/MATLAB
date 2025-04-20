% 定义 x, y, z 的范围
[x, y, z] = meshgrid(-5:0.05:5, -5:0.05:5, -10:0.05:10);

% 定义方程
F = 4*x.^2 + y.^2 - z.^2;

% 绘制等值面（F = 4）
p = patch(isosurface(x, y, z, F, 4));
p.FaceColor = 'red';   % 设置等值面颜色为红色
p.EdgeColor = 'none';  % 去掉等值面的边缘线，使图形更光滑

% 添加等值面的法线，增强立体感
isonormals(x, y, z, F, p);

% 美化图形
colormap('jet');       % 设置颜色映射
shading interp;        % 平滑着色
axis equal;            % 保持比例
xlabel('X');           % 添加X轴标签
ylabel('Y');           % 添加Y轴标签
zlabel('Z');           % 添加Z轴标签
title('双叶双曲面: 4x^2 + y^2 - z^2 = 4');  % 添加标题
grid on;               % 显示网格
camlight;              % 添加光源
lighting gouraud;      % 设置光照效果

% 调整视图角度
view(3);               % 设置三维视图
