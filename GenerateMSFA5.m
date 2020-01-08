function [ MSFA,bimask ] = GenerateMSFA5( img )
%function to generate 5band MSFA using binary tree
%   input:- IMG is original 15band image of size m*n*5
%output:- MSFA is raw image of size m*n in which at each pixel location only one band
%         information is available.
%         bimask is of size m*n*5 containing 0 or 1
%         MSFAmask is of size m*n*5
% 1 5 2 5
% 4 3 4 3
% 2 5 1 5
% 4 3 4 3
[m,n,p]=size(img);
temp(:,:,1)=[1 0 0 0;
             0 0 0 0;
             0 0 1 0;
             0 0 0 0];
temp(:,:,2)=[0 0 1 0;
             0 0 0 0;
             1 0 0 0;
             0 0 0 0];
temp(:,:,3)=[0 0 0 0;   
             0 1 0 1;
             0 0 0 0;
             0 1 0 1];
temp(:,:,4)=[0 0 0 0;
             1 0 1 0;
             0 0 0 0;
             1 0 1 0];
temp(:,:,5)=[0 1 0 1;
             0 0 0 0;
             0 1 0 1;
             0 0 0 0];
img=im2double(img); 
bimask=zeros(size(img));  
MSFAmask=zeros(size(img));
for i=1:p
    bimask1(:,:,i)=repmat(temp(:,:,i),ceil(m/4),ceil(n/4));
end
for i=1:p
    bimask(:,:,i)=bimask1(1:m,1:n,i);
end
MSFA=zeros(m,n); 
%multiply the bimask wih individual bands to get band values at specific points such that rawimg(MSFA) have individual band values.
for i=1:p
    MSFAmask(:,:,i)=bimask(:,:,i).*img(:,:,i);    
    MSFA(:,:)=MSFA(:,:)+MSFAmask(:,:,i);
end
end

