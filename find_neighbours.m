%% === To find the neighbours===
%use dserachn
function [narray,ipixel] = find_neighbours(ipixelx,ipixely,img,row,col)
	
	i = ipixelx;
	j = ipixely;
    s = size(img,1);
    
    p = [i j];
    pq = [row col];
    %disp(pq);
    
    idx = knnsearch(pq,p,'IncludeTies',true,'K',3);
    %fprintf("Indexes");
    %celldisp(idx);
    
    dist3=idx{1};
    dist2 = pq(dist3(3),:); %for the 3rd index as it will be second nearest neighbour
    dist = max(abs(dist2-p),[],'all');%returns max of their abs diff
    %disp(dist);
    
    istart = i-dist;
    iend = i+dist;
    jstart = j-dist;
    jend = j+dist;
    
    if(istart <= 0)
        istart = 1;
    end
    if(iend > s)
        iend = s;
    end
    if(jstart<=0)
        jstart= 1;
    end
    if(jend >s)
        jend = s;
    end
    
    %fprintf('%d %d %d %d\n',istart,iend,jstart,jend);
    narray = img(istart:iend,jstart:jend);
    ipixel = [i-istart+1 j-jstart+1];   %relative origin wrt new neighbour array changes

end
	
		