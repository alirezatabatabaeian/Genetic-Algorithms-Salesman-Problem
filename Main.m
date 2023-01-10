%% Clear

close all ; clear ; clc ;  % Close all

%% Initial Parameters Definition

Start_Point = [0,0,0] ; % Define Start Point
Stop_Point  = [3,4,5] ; % Define End Point
Number_of_Cities = 25 ; % Define Number of Cities
Number_of_FirstGeneration = 100 ; % Define The Number of First Generation Parents
Number_of_Iterations = 300 ; % Define Number of Iterations
Points = Random_Number_Generator( Start_Point , Stop_Point , Number_of_Cities) ; % Generate The Cities
Roots = zeros( Number_of_FirstGeneration , Number_of_Cities , Number_of_Iterations ) ; % Define a 3D Vector for Roots
Length = zeros( Number_of_FirstGeneration , 1 , Number_of_Iterations ) ; % Define a Vector for Length of Roots

%% Generate the First Generation of Parents

for i = 1 : Number_of_FirstGeneration
    
    Roots ( i , : , 1 ) = randperm( Number_of_Cities ) ; % A Permutation of Cities
    Length( i , 1 , 1 ) = Distance(Points , Roots ( i , : , 1 )) ; % Find the Length of the Generated Root

end

[Length( : , 1 , 1 ) , Positions ] = sort(Length( : , 1 , 1 )) ; % Sort the Lengths
Roots ( : , : , 1 ) = Roots ( Positions , : , 1 ) ; % Sort the Roots according to their Lengths

%% Generate Children from Parents

figure(1) % Plot the Roots
plot3([0;Points(Roots( 1 , : , 1 ),1);0],[0;Points(Roots( 1 , : , 1 ),2);0],[0;Points(Roots( 1 , : , 1 ),3);0],'b-o','MarkerSize',12,'MarkerFaceColor','g','LineWidth',2);
title('Best Root in each Iteration','color','r');
xlabel('X','color','r');
ylabel('Y','color','r');
zlabel('Z','color','r');
pause(3); % Pause order so as to Have a Better Insight into Plots

for i = 2 : Number_of_Iterations
    
    Roots ( : , : , i ) = New_Roots_Generation(Roots( : , : , i-1 )); % Generate new Roots from Parents
    
    for j = 1 : Number_of_FirstGeneration
        
        Length( j , 1 , i ) = Distance(Points , Roots ( j , : , i )) ; % Find The Lengths of new Children 
        
    end
    
    [Length( : , 1 , i ) , Positions ] = sort(Length( : , 1 , i )) ; % Sort the Lengths
    Roots ( : , : , i ) = Roots ( Positions , : , i ) ; % Sort the Roots according to their Lengths
    pause(0.001); % Pause order so as to Have a Better Insight into Plots
    plot3([0;Points(Roots( 1 , : , i ),1);0],[0;Points(Roots( 1 , : , i ),2);0],[0;Points(Roots( 1 , : , i ),3);0],'b-o','MarkerSize',12,'MarkerFaceColor','g','LineWidth',2); % Plot 3D Connections
    title('Best Root in each Iteration','color','r');
    xlabel('X','color','r');
    ylabel('Y','color','r');
    zlabel('Z','color','r');
    
end

% figure(2) % Plot the Best Length answer of each Iteratin
% X = 1 : 1 : Number_of_Iterations ;
% Y(:) = Length(1,1,:) ;
% plot(X , Y);
% title('Y : Best Length / X : Iteration','color','b');
% xlabel('Iteration','color','r');
% ylabel('Best Length','color','r');