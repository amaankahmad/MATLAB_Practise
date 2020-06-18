A = [1 2 3; 4 5 6; 7 8 9];
B = [4 3 2; 3 4 5; 2 6 4;];
[m1 , n1] = size(A); % Number of Rows of A
[m2, n2] = size(B); % Number of Columns of B
AxB=zeros(m1,n2); % Empty matrix of rowAxcolumnB
if n1~=m2
    AxB = 'Error - Matrices not of same dimensions';
end
for i=1:1:m1
    for j=1:1:n2
        for k=1:1:m2
            AxB(i,j)=AxB(i,j)+A(i,k)*B(k,j); % Row of ouput = Multiplication of rowA and columnB
        end
    end
end
disp(AxB);

