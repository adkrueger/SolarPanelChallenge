function printAndPlotData(sol, fval)
arguments (Input)
    sol (1,1) struct  % solution for the energy optimization problem
    fval (1,1) double {mustBeNumeric}  % the objective function value at the solution
end

% Print the results to the screen
fprintf('Optimal Tilt Angle: %.2f deg\n', sol.theta);
fprintf('Optimal Aspect Ratio: %.2f\n', sol.r);
fprintf('Maximum Energy Output: %.2f units\n', fval);


% 6. graph
% make a bunch of points for the x and y axis 
% the step for the angle is 1, the step for ratio is 0.1
% hint: keep theta and r within the bounds specified in task 3
[theta_grid, r_grid] = meshgrid(?, ?);

% now calculate the energy for every single point on the meshgrid
% hint: this is very similar to energyFcn, but we're applying it to the
% matrices we just created with meshgrid. You may consider using element-wise
% multiplication, see here:
% https://www.mathworks.com/help/matlab/ref/double.times.html
E_grid = ?;

% draw the 3d graph using the "surf" function
% hint: consider looking at the "EdgeColor" parameter if it doesn't turn
% out "pretty" :-)
surf(?, ?, ?);

% label everything using title, xlabel, ylabel, zlabel, and colorbar
?
?
?
?
?

% put a star on the plot to show where the most optimal point is
% hint: you will need a MATLAB plot function that lets you plot coordinates
% in 3-D space.
% hint: remember the outputs of the function used to solve the optimization
% problem!
?
end
