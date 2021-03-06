function [ x ] = xoff(initialVelocity, launchAngle, projectileWeight,...
                      dragCoefficient, timeOfFlight)
                     
earthGravity = 32.2;
projectileMass = projectileWeight / earthGravity;

x = initialVelocity * ...
        cosd(launchAngle) * ...
        (projectileMass / dragCoefficient) * ...
        (1 - exp(-(dragCoefficient / projectileMass) * timeOfFlight));
                     
end

