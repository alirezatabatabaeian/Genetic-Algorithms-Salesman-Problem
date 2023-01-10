function Mutant = Mutation(Root) % Define The Mutation function
    
    Number_of_Cities = length( Root ) ; % Find the Number of Cities
    K1 = 0 ; % K1 = The First Random Position
    K2 = 0 ; % K2 = The Second Random Position
    
    while K1==K2
        
          K1 = randi([1,Number_of_Cities]) ; % The First Random Position
          K2 = randi([1,Number_of_Cities]) ; % The Second Random Position
          
    end
    
    Root([K1,K2])=Root([K2,K1]); % Mutate = Change The Numbers
    Mutant = Root;
    
end

