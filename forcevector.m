%% == to calculate resualtant force vector of given pixel in its neighbourhood ===
function rF = forcevector(narray,origin)
   
    [row,col] = find(narray); %returns row and col subscripts of nonzero elements
    F = zeros(length(row),2); %stores the force vectors for given pixel
    for i=1:length(row)
        vec = [row(i) col(i)]; 
        F(i,:) = vec - origin;

    end
    %disp(F);
    f = sum(F,1);
    rF = sqrt(sum(f.^2));
    %disp(rF);
end