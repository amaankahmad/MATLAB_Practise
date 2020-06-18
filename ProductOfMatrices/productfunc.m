function AxB = productfunc(A,B)
% Product of 2 matrices, A and B
% Checks dimensions of the matrices are the same
[m1 , n1] = size(A); % Number of Rows of A
[m2, n2] = size(B); % Number of Columns of B
AxB=zeros(m1,n2); % Empty matrix of rowAxcolumnB
if n1~=m2 % Check if multiplcation is valid
    AxB = 'Error - Matrices not of same dimensions';
end
for i=1:1:m1 % Run up to number of rows in A
    for j=1:1:n2 % Run up to number of columns in B
        for k=1:1:m2 % Run up to m2 or n1 (both are equal so doesn't matter)
            AxB(i,j)=AxB(i,j)+A(i,k)*B(k,j); % Row of ouput = Multiplication of rowA and columnB
        end
    end
end
disp(AxB); % Display answer
end

