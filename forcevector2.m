function rF = forcevector2( narray, ipixel,size)

origin = ipixel;
m = length(narray);
F = zeros(m,2);
for i = 1:m
    row = rem(idx,size);
    col = idx/size;
     vec = [row col];
     F(i,:) = vec - origin;
end
    disp(F);
    f = sum(F,1);
    rF = sqrt(sum(f.^2));
    disp(rF);
end



%% for calculating force vector
%         f = sqrt(sum(vec.^2));
%         theta = atan(vec(2)/vec(1));
%         F(i,1) = f*cos(theta);
%         F(i,2) = f*sin(theta);

%% find neighbours for btes
%k = -log2(poa);
%     disp("Power of 2=");
%     k = round(k);
%     disp(k);
%     
%     if  mod(k,2) == 0
%         dist = k;   %even then min dist = power itself
%     else
%         dist = pow2( (k-1)/2 );
%     end
%     
%     disp(dist);
% 	[sm,n]= size(img);
%     narray = zeros(2*dist+1);
% 	
%     if (i-dist >= 1 && i+dist <= m && j-dist>=1 && j+dist<=n)
% 	narray = img(i-dist:i+dist , j-dist:j+dist);
%     %not considering borders yet