function E = energyFcn(theta, r)
arguments (Input)
    theta (1,1) double {mustBeNumeric}  % first variable is tilt angle
    r (1,1) double {mustBeNumeric}  % second variable is aspect ratio
end

arguments (Output)
    E (1,1) double {mustBeNumeric}  % output is the energy output of the solar panel
end

% Energy is based on cosine of angle differences and shape efficiency
A = 2;  % constant area for a solar panel in m^2
nu = cosd(theta - 30);  % efficiency function
sunIntensity = 1000 * cosd(theta - 45);  % sunlight variation with tilt
fr = exp(-0.1 * (r - 1)^2);  % calculate efficiency drop for extreme shapes

% finally, calculate E for output
E = A * nu * sunIntensity * fr;
end
