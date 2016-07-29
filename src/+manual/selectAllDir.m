function [ colorDir, irDir ] = selectAllDir (startPath)
%SELECTALLDIR Open two directory dialog box with prompts
%   DIRECTORYNAME = UIGETDIR(STARTPATH)
%   displays information about the desired directory, displays two dialog boxs
%   for the user to use to select the desired directories.
%
%   The STARTPATH parameter determines the initial folder in which the
%   dialog box opens.
%
%   When the STARTPATH is a valid path, the dialog box opens in the
%   specified folder.
%
%   When the STARTPATH is an empty string ('') or is not a valid path, the
%   dialog box opens in the current folder.
%
%   See also UIGETDIR

narginchk(0,1);

if nargin == 0,
    startPath = '';
end

dirPrompt = 'Select the Color image directory.\n';
fprintf(1, dirPrompt);
colorDir = uigetdir(startPath, dirPrompt);

% Sets the search for the ir directory in the parent of the color directory.
parentDir = fileparts(colorDir);

dirPrompt = 'Select the IR image directory.\n';
fprintf(1, dirPrompt);
irDir = uigetdir(parentDir, dirPrompt);

end
