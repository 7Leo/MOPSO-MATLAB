function result = cost_function(x)
    a = 0.8;
    b = 3;
    
    first_objective = sum(-10*exp(-0.2*sqrt(x(1:end-1).^2+x(2:end).^2)));
    second_objective = sum(abs(x).^a+5*(sin(x)).^b);
    
    result = [first_objective second_objective];
end