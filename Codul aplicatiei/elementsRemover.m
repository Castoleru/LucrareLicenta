function newGrayImage = elementsRemover(thisFrame)
% Eliminarea alementelor ce provin de la endoscop 

    % Obtinerea imaginii Alb-Negru    
    grayImage = rgb2gray(thisFrame);
    
    % Dimensiunile imaginii
    [rows, columns] = size(grayImage);

    % Binarizam imaginea in functie de valoarea pixelilor( negru <17, alb>17)
    imageBinar = grayImage > 17;

    % Identificarea Regiunilor ( text + imaginea endoscopiei)
    % Obtinerea reginuilor din Imagine
    labeledImage = bwlabel(imageBinar);
    
    % Determinam centrele regiunilor
    regions = regionprops(imageBinar, 'Area', 'Centroid'); 
    
    % Obtinerea Regiunilor pe Rand/Coloana
    allCentroids = [regions.Centroid]; 
    centroidsColum = allCentroids(1:2:end);
    centroidsRaw = allCentroids(2:2:end);
    
    % Cautam in 20% din marginile pozei.
    marginColum = 0.2 * columns;
    marginRaw = 0.2 * rows;
    keepers = (centroidsColum > marginColum & centroidsColum < (columns - marginColum))...
            & (centroidsRaw > marginRaw & centroidsRaw < (rows - marginRaw));
    
    % Regiunile dorite din imagine
    indexes = find(keepers);

    % Imaginea Binara ce contine doar zona de interes
    newimageBinar = ismember(labeledImage, indexes);
        % Obtinerea imaginii alb negru fara text
    newGrayImage = grayImage; 
    newGrayImage(~newimageBinar) = 0;
end

