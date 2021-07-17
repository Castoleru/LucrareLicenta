function movieFullFileName = fileOpen()
% Deschidere Fisier

folder = fileparts(which('cas.avi')); 
movieFullFileName = fullfile(folder, 'cas.avi');

% Verificare Fisier
if ~exist(movieFullFileName, 'file')
    % Alegere fisier
	strErrorMessage = sprintf('Please, chose an video from an endoscopy', movieFullFileName);
	response = questdlg(strErrorMessage,...
        'Dialog', 'Ok', 'Cancel', 'Ok');
	if strcmpi(response, 'Ok')
		[baseFileName, folderName, FilterIndex] = uigetfile('*.avi');
		if ~isequal(baseFileName, 0)
			movieFullFileName = fullfile(folderName, baseFileName);
		else
			return;
		end
	else
		movieFullFileName = "None";
	end
end

end

