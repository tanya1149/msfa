function result = scoeff(img)

    %disp(img);
    k = size(img,3);
    fprintf("Number of planes=");
    disp(k);

    sum = 0;
    for i = 1:k
        sum = sum + 1/(1+mu(img(:,:,i)));
        fprintf("\n%dth Palne done\n",i);
    end

    result = 1 - sum/k;
    disp(result);
end