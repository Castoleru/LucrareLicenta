function T = data2Table_App(AnalizeMatrix)
%DATA2TABLE Summary of this function goes here
%   Detailed explanation goes here
x = 2;
y = 101;

 z = 1; %Kernel
    Values = AnalizeMatrix(x:y,z);
        meanKernel = mean(double(Values));
        stdKernel = std(double(Values));
        varKernel = var(double(Values));

    
    z = 2; %Sobel
    Values = AnalizeMatrix(x:y,z);
        meanSobel = mean(double(Values));
        stdSobel = std(double(Values));
        varSobel = var(double(Values));
 
    z = 3; %StdGray
    Values = AnalizeMatrix(x:y,z);
        meanStdGray = mean(double(Values));
        stdStdGray = std(double(Values));
        varStdGray = var(double(Values));

             
    z = 4; %MeanGray
    Values = AnalizeMatrix(x:y,z);
        meanMeanGray = mean(double(Values));
        stdMeanGray = std(double(Values));
        varMeanGray = var(double(Values));
 
               
    z = 5; %MeanRed
    Values = AnalizeMatrix(x:y,z);
        meanMeanRed = mean(double(Values));
        stdMeanRed = std(double(Values));
        varMeanRed = var(double(Values));
    
        
    z = 6; %MeanGreen
    Values = AnalizeMatrix(x:y,z);
        meanMeanGreen = mean(double(Values));
        stdMeanGreen = std(double(Values));
        varMeanGreen = var(double(Values));


    z = 7; %MeanBlue
    Values = AnalizeMatrix(x:y,z);
        meanMeanBlue = mean(double(Values));
        stdMeanBlue = std(double(Values));
        varMeanBlue = var(double(Values));

           
    z = 8; %Entropy
    Values = AnalizeMatrix(x:y,z);
        meanEntropy = mean(double(Values));
        stdEntropy = std(double(Values));
        varEntropy = var(double(Values));

        
    z = 9; %RegionsB
    Values = AnalizeMatrix(x:y,z);
        meanRegionsB = mean(double(Values));
        stdRegionsB = std(double(Values));
        varRegionsB = var(double(Values));
    
    z = 10; %RegionsS
    Values = AnalizeMatrix(x:y,z);
        meanRegionsS = mean(double(Values));
        stdRegionsS = std(double(Values));
        varRegionsS = var(double(Values));



    T = [meanKernel, stdKernel, varKernel,...
        meanSobel, stdSobel, varSobel,...
        meanStdGray, stdStdGray, varStdGray,...
        meanMeanGray, stdMeanGray, varMeanGray,...
        meanMeanRed, stdMeanRed, varMeanRed,...
        meanMeanGreen, stdMeanGreen, varMeanGreen,...
        meanMeanBlue, stdMeanBlue, varMeanBlue,...
        meanEntropy, stdEntropy, varEntropy,...
        meanRegionsB, stdRegionsB, varRegionsB,...
        meanRegionsS, stdRegionsS, varRegionsS,...
        ];
    T = array2table(T);
    T.Properties.VariableNames = {'meanKernel','stdKernel','varKernel','meanSobel'...
         ,'stdSobel','varSobel','meanStdGray','stdStdGray','varStdGray','meanMeanGray'...
         ,'stdMeanGray','varMeanGray','meanMeanRed','stdMeanRed','varMeanRed','meanMeanGreen'...
         ,'stdMeanGreen','varMeanGreen','meanMeanBlue','stdMeanBlue','varMeanBlue'...
         ,'meanEntropy','stdEntropy','varEntropy','meanRegionsB','stdRegionsB','varRegionsB'...
         ,'meanRegionsS','stdRegionsS','varRegionsS'};


end

