function editedFrame = cropImage(grayImage,thisFrame,rows,columns)
%CROPIMAGE Reduce banda neagra din imaginie
%   Algoritmul afla cat din imagine poate fi eliminat pentru a optimiza
%   procesul de achizite a datolr

% Inaltime
for i_black = 1:rows
       if( grayImage(i_black,columns/2) ~= 0) 
           break
       end
    end
% Latime
    for j_black = 1:columns
       if( grayImage(rows/2,j_black) ~= 0 ) 
           break
       end
    end
% Ajustari  
 targetSize = [rows-i_black-20,columns-j_black-20];  
 resize = centerCropWindow2d(size(thisFrame),targetSize);
 editedFrame = imcrop(thisFrame,resize);
  
end

