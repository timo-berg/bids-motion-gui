% General Info
% Required for dataset_description.json
generalInfo.dataset_description.Name = 'Triangle completion task in an immersive VR and Desktop condition';
generalInfo.dataset_description.BIDSVersion  = 'unofficial extension';
generalInfo.dataset_description.Acknowledgements  = 'We thank Yiru Chen for assitance in the data collection';
% optional for dataset_description.json
generalInfo.dataset_description.License  = 'CC by 4.0';
generalInfo.generalInfo.dataset_description.Authors   = 'Timotheus Berg and Klaus Gramann';
generalInfo.dataset_description.Acknowledgements  = 'We thank Yiru Chen for assitance in the data collection';
generalInfo.dataset_description.Funding  = 'This Study was realized by funding from the German Research Foundation (DFG)';
generalInfo.dataset_description.ReferencesAndLinks  = '';
generalInfo.dataset_description.DatasetDOI  = '';
% general information shared across modality specific json files 
generalInfo.InstitutionName  = 'Technische Universitaet Berlin';
generalInfo.InstitutionalDepartmentName  = 'Chair of Biological Psychology and Neuroergonomics, Department of Psychology and Ergonomics';
generalInfo.InstitutionAddress  = 'Fasanenstr. 1, 10623, Berlin, Germany';
generalInfo.TaskDescription  = 'Participants performed a triangle completion task in an environment without external landmarks. The participants where guided by a sphere to walk two legs of a triangle and were given the task of finding the origin of the walked path (i.e. start of the triangle). The task condition alternated with a baseline condition in which the participants were guided by the sphere to random points in the room.';
generalInfo.task  = 'triangleWalk';

% Folder and file structure 
bemobil_config.study_folder   = 'E:bemobil_config.filename_prefix  = 's';
bemobil_config.raw_data_folder  = '0_raw-data';
bemobil_config.bids_data_folder  = '1_BIDS-data';
bemobil_config.channel_locations_filename  = 'locs.elc';
bemobil_config.bids_eegkeyword  = 'BrainVision';
bemobil_config.bids_tasklabel  = 'triangleWalk';

% Session and rigidbody info 
bemobil_config.rigidbody_streams  = {};
bemobil_config.filenames  = {'SessionName'};
bemobil_config.bids_motion_positionunits  = {''};
bemobil_config.bids_motion_orientationunits  = {''};
bemobil_config.bids_rbsessions  = [];

% EEG recording system 
eegInfo.eeg.PowerLineFequency  = '2';
eegInfo.eeg.EEGReference  = 'REF';

% Motion recording system 
motionInfo.acq  = 'Vive';
motionInfo.motion.Manufacturer  = 'HTC';
motionInfo.motion.ManufacturersModelName  = 'Vive Pro';
motionInfo.motion.RecordingType  = 'continuous';
motionInfo.coordsystem.MotionCoordinateSystem  = 'RUF';
motionInfo.coordsystem.MotionRotationRule  = 'left-hand';
motionInfo.coordsystem.MotionRotationOrder  = 'ZXY';
