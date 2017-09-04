function ConvertAnalogCh(filename, newname); 
% Written: July 29, 2017
% Last Modified by Anja Payne 9/4/2017
%
% Inputs:
%   filename: current file name for the .continous file obtained from open
%       ephys
%   newname: name you would like to give the .dat file after conversion

% Import open ephys data using code obtained from GitHub
[v, t, info] = load_open_ephys_data_faster(filename);

fid = fopen(newname, 'w');
fwrite(fid, v, 'uint16');  
fclose(fid);

plot(t,v)