function [x1,y1] = wfn(x,y,k)

if k==1
    w = [0, 0; 0, 0.16];
    t = [0; 0];

elseif k==2
    w = [.2, -0.26; 0.23, 0.22];
    t = [0; 1.6];
    
    
elseif k==3
    w = [-0.15, 0.28; 0.26, 0.24];
    t = [0; 0.44];
    
    
elseif k==4
    w = [0.85, 0.04; -0.04, 0.85];
    t = [0; 1.6];
end
   
% Perform mapping on input coordinate
v = w*[x;y] + t;

% Extract (x,y) from computed vector and return the values.
x1 = v(1);
y1 = v(2);

end
