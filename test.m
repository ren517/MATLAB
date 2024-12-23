A = [1 2 3 ; 4 5 6 ; 7 8 9];
disp(A);
B = A';
%%反制矩阵

disp(B);

C = A(:);

%%拉长矩阵
disp(C);

D = pinv(A);

disp(D);

X = zeros(10 , 5 , 3);
disp(X);

E = randi(5 , 10 , 5);
disp(E);