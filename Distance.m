function d = Distance(Points , Root) % Length Function
    
    Number_of_cities = length( Points ) ;
    Length = zeros(1 , Number_of_cities + 1) ;
    
    Length(1)   = sqrt(sum((Points(Root(1),:)).^2)) ; % Length of the First Point from the Origin
    
    for i = 2 : Number_of_cities
        
        Length(i) = sqrt(sum((Points(Root(i),:)-Points(Root(i-1),:)).^2)) ; % Length of the points with each other
    
    end
    
    Length(Number_of_cities+1) = sqrt(sum((Points(Root(Number_of_cities),:)).^2)) ; % Length of the Last Point from the Origin
    
    d = sum( Length ) ; % Summation of these lengths
    
end

