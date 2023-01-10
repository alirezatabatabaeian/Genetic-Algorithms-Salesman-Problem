function Points = Random_Number_Generator( Start_Point , Stop_Point , Number_of_Cities) % Parent Coordinates Generator Function
    
    X = ( ( Stop_Point(1) - Start_Point(1) ) * rand( Number_of_Cities , 1 ) ) + Start_Point(1) ; % Define X
    Y = ( ( Stop_Point(2) - Start_Point(2) ) * rand( Number_of_Cities , 1 ) ) + Start_Point(2) ; % Define Y
    Z = ( ( Stop_Point(3) - Start_Point(3) ) * rand( Number_of_Cities , 1 ) ) + Start_Point(3) ; % Define Z
    Points = [ X , Y , Z ] ;
    
end