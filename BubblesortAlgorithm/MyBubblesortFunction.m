function sorted = MyBubblesortFunction(inputArg)
% Sorting of a list inputArg
n=length(inputArg); % Number of entries, n
for i=1:1:n-1 % making (n-1) passes
    for j=1:1:n-1 % comparing each number with the next and swapping
    if inputArg(i)>inputArg(j+1)
        % temp is a variable where the numbers are kept temporarily for the switch
        temp=inputArg(j);
        inputArg(j)=inputArg(j+1);
        inputArg(j+1)=temp;
    end
    end
end
sorted = inputArg;
end

