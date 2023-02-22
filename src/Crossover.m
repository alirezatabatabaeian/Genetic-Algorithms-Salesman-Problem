function Crossed = Crossover(Root) % Crossover Function Definition
    
    Number_of_Cities = length( Root ) ; % Find the Number of Cities
    K1 = 0 ; % K1 = The First Random Position
    K2 = 0 ; % K2 = The Second Random Position
    
    while K1==K2
        
          K1 = randi([1,Number_of_Cities]) ; % The First Random Position
          K2 = randi([1,Number_of_Cities]) ; % The Second Random Position
    end
    
    if K1 < K2 % Crossover
       Root(1,K1:K2) = fliplr(Root(1,K1:K2)); % fliplr is the best function for crossover
    else
        Root(1,K2:K1) = fliplr(Root(1,K2:K1));
    end
    
    Crossed = Root ;
    
end

