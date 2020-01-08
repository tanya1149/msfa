img = [1 0 1 ;  
        0 1 0 ;    
        1 0 1];
    
img2 = [1 0 0 1 0 0 0;
        0 0 0 0 0 0 0;
        0 0 0 0 0 0 0;
        0 0 0 1 0 0 1;
        0 0 0 0 0 0 0;
        0 1 0 0 0 0 0;
        0 0 0 0 1 0 0];
%disp(img2);
    k =(size(img2,3));
     %disp(k);
 bimask = img2;

   
%img2 = [img zeros(4,4);
%         zeros(4,4) img];
% fullimg = repmat(img2, 4,4);
%    disp(fullimg);
% %    
% % narray = find_neighbours(5,5,fullimg,1/32);
% % disp(narray);
% %     
% rf = forcevector(img);

% 1 5 2 5
% 4 3 4 3
% 2 5 1 5
% 4 3 4 3
% clc;   clear;
% addpath('SpectralData');
% path='F:\MSFA\Demosaicking\MultiSpectralImageDataSet5\';
% d=dir(path); % STRUCTURE OF DIRECTORY
% dlength= length(d);% NO OF DIRECTORIES WITH 2 DEFAULT DIRECTORIES
% k=1;
% result = zeros(1,dlength-4);
% % for i = 3:dlength-1
%     path1 = strcat(path,d(i).name,'\');
%     d1 = dir(path1);
%     dlength1 = length(d1);
%     clear s;
%     x=1;
%    
%     for j=4:7:dlength1   %read 5 bands of image from dataset
%         path2 = strcat(path1,d1(j).name);    
%         s(:,:,x)=imread(path2);  
%         x=x+1;
%     end
%     img=s;
%     
%     tstart=tic;
%    [ MSFA,bimask ] = GenerateMSFA5( img );
   r(k) = scoeff(bimask);            %size(img2,3));
  %narray = find_neighbours(4,4,img2);
  k = k+1;% x is taken for no. of images  
%    end
   result = sum(r);
   disp(result);
    