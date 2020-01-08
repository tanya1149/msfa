%% ======= to calculte Mu for gievn plane ======

function result = mu(img)

% s = size(img,1); %assuming pic is sq matrix
[row,col] = find(img);      %listing all the non-zero elements in image
n = length(row);    %no.of active pixels in that plane
rf = zeros(n,1);
disp(n);
for i = 1:n
    ipixel = [row(i) col(i)];
    [narray,ipixel1] = find_neighbours(ipixel(1),ipixel(2),img,row,col);
    rf(i) = forcevector(narray,ipixel1);
    fprintf("\n%dth pixel evaluated",i);
end

result = sum(rf)/n;
end
