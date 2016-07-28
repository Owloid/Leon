activeImageDir = colorDir;
activeImageSet = colorImages;
processActiveImageSet;
activeImageSetNum = 1;
clickCalib;

go_calib_optim

save_name = 'Calib_Results_right';
my_saving_calib

save_name = 'Calib_Results_right.mat';
if exist('calib_data.mat', 'file'),
    delete calib_data.mat
end


activeImageDir = irDir;
activeImageSet = irImages;
processActiveImageSet;
activeImageSetNum = 2;
clickCalib;

go_calib_optim

save_name = 'Calib_Results_left';
my_saving_calib

save_name = 'Calib_Results_left.mat';
if exist('calib_data.mat', 'file'),
    delete calib_data.mat
end

reopenGUI;
