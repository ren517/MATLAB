% 清除工作区中的所有变量
clear all; 
% 清除命令行窗口中的内容
clc;  

%% 矩阵
%% 直接创建法
a = [1 , 2 , 3 ; 4 , 5 , 6 ; 7 ,  8 , 9];
%% 函数法
% zeros
b = zeros(100);
c = zeros(100,99);
%rand randi randn
d = rand(5);% 随机数
e = randi([1,100],5,3);% 随机整数

% randn 正态分布
randn(5);

%% 修改元素
A = [1 : 4 ; 2 : 5 ; 3 : 6];
% A(2 , :) = 10;
% A([1 , 3] , [1 , 2]) = 0

% A(5 ,6) = 888;% 会对矩阵自动拓展
% A(: , [1,end]) = []
% A(1,2) = [] error
% A(10) = [] %删除一个要用线性索引

%% 矩阵的拼接和重构重排
A = [1 : 4 ; 2 : 5 ; 3 : 6];
B = ones(3 , 2);
C = [A,B]%横向拼接 或C = [A B]
C2 = cat(2 , A , B);

% 纵向拼接
B2 = ones(2 , 4);
D = [A ; B2];
D2 = cat(1 , A ,B2);

% 重构
A = randi([1 , 10] , 2 , 6);
B = reshape(A , 3 ,4);
C = reshape(A , 3 , []);
A(:);
B(:);

% 重排
A;
sort(A , 1 , "ascend"); % 按列 ， 升序
sort(A , 2 , "ascend");% 按行 ， 升序
sort(A , 1 ,"descend");%按列 ， 降序
sort(A , 2 , "descend");
sortrows(A , 2 , "descend"); % 不改变同行的元素，2表示第二列

%% 矩阵运算
A = randi(10 , 3 , 4);
sum(A , 1); %计算每一列的和
sum(A , 2); %计算每一行的和
sum(A,"all");
prod(A , "all")






