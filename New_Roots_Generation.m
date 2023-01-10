function Children = New_Roots_Generation(Parents) % Children Generation function
    
    [Number_of_Parents , Nember_of_Cities] = size(Parents); % Find the number of parents and cities
    temp = zeros(Number_of_Parents , Nember_of_Cities); % Children temporary variable Definition
    
    for i = 1 : 0.49*Number_of_Parents % Reproduction
        temp(i,:) = Parents(i,:);
    end
    
    for i = 0.49*Number_of_Parents+1 : 0.5*Number_of_Parents % Mutation
        temp(i,:) = Mutation(Parents(i-0.49*Number_of_Parents,:)) ;
    end
    
    for i = 1 : Number_of_Parents/4 % Crossover
        for j = i-1 : i
            temp(0.5*Number_of_Parents+i+j,:) = Crossover(Parents(i,:)) ;
        end
    end
    
    Children = temp ;
end

