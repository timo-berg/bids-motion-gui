% example script for BeMoBIL BIDS tools xdf2bids

% required for dataset_description.json
generalInfo.dataset_description.Name                = 'Walking task in the young and old';
generalInfo.dataset_description.BIDSVersion         = 'unofficial extension';
% optional for dataset_description.json
generalInfo.dataset_description.License             = 'CC BY 4.0';
generalInfo.dataset_description.Authors             = 'Janna Protzak and Klaus Gramann';
generalInfo.dataset_description.Acknowledgements    = 'n/a';
generalInfo.dataset_description.Funding             = 'This Study was realized by funding from the Federal Ministry of Education and Research (BMBF)';
generalInfo.dataset_description.ReferencesAndLinks  = 'n/a';
generalInfo.dataset_description.DatasetDOI          = 'n/a';
% general information shared across modality specific json files 
generalInfo.InstitutionName                         = 'Technische Universitaet Berlin';
generalInfo.InstitutionalDepartmentName             = 'Junior research group FANS (Pedestrian Assistance System for Older Road Users), Department of Psychology and Ergonomics';
generalInfo.InstitutionAddress                      = 'Marchstr. 23, 10587, Berlin, Germany';
generalInfo.TaskDescription                         = 'Younger and older adults performed a visual discrimination task (button presses to peripheral presented LED flashes) during walking. Visual targets were either presented with or without preceding vibro-tactile cues';


% Folder and file structure
bemobil_config.study_folder             = 'P:\Sein_Jeung\Project_BIDS\Example_datasets\TW';
bemobil_config.filename_prefix          = 's';
bemobil_config.raw_data_folder          = '0_raw-data\';
bemobil_config.bids_data_folder         = '1_BIDS-data\';
bemobil_config.channel_locations_filename = 'locs.elc';
bemobil_config.bids_eegkeyword          = 'BrainVision';                    % marker streams also contain these strings. However, only the continuous stream is imported
bemobil_config.bids_tasklabel           = 'triangleWalk';


% Session and rigidbody info
bemobil_config.rigidbody_streams        = {'TorsoTransform','RightFootTransform','SphereTransfrom',...
                                    'LeftFootTransform','VRPlayerTransform','DesktopPlayerTransform','HandTransform'};
bemobil_config.filenames                = {'Desktop', 'VR'}; 
bemobil_config.bids_rbsessions                 = [false, false, true, false, false, true, false; ...
                                                  true, true, true, true, true, false, true ];
bemobil_config.bids_motion_positionunits       = {'vm', 'm'};                       % if multisession, cell array of size 1 x session number
bemobil_config.bids_motion_orientationunits    = {'rad', 'rad'};                     % if multisession, cell array of size 1 x session number


% information about the EEG recording system 
% coordinate system
eegInfo.eeg.PowerLineFequency                       = 50;
eegInfo.eeg.EEGReference                            = 'REF'; 


% information about the motion recording system 
% data type and acquisition label
motionInfo.acq                                     = 'Vive';
% motion specific fields in json
motionInfo.motion.Manufacturer                     = 'HTC';
motionInfo.motion.ManufacturersModelName           = 'VivePro';
motionInfo.motion.RecordingType                    = 'continuous';
% coordinate system
motionInfo.coordsystem.MotionCoordinateSystem      = 'RUF';
motionInfo.coordsystem.MotionRotationRule          = 'left-hand';
motionInfo.coordsystem.MotionRotationOrder         = 'ZXY'; % this follows the result after quat to euler conversion


% participant information (load .csv and then edit?)
subjectInfo.fields.age.Description      = 'age of the participant'; 
subjectInfo.fields.age.Unit             = 'years'; 
subjectInfo.fields.sex.Description      = 'sex of the participant'; 
subjectInfo.fields.sex.Levels.M         = 'male'; 
subjectInfo.fields.sex.Levels.F         = 'female'; 
subjectInfo.fields.group.Description    = 'experiment group';
subjectInfo.fields.group.Levels.young   = 'younger participants under 35';
subjectInfo.fields.group.Levels.old     = 'older participants over 65';
subjectInfo.fields.handedness.Description    = 'handedness of the participant';
subjectInfo.fields.handedness.Levels.R       = 'right-handed';
subjectInfo.fields.handedness.Levels.L       = 'left-handed';
% data table
subjectInfo.cols = {'nr',   'age',  'sex',  'group',    'handedness'};
subjectInfo.data = {3,     71,     'F',    'old',      'R' ; ...
                    };


% execution
numericalIDs                            = [3]; 
bemobil_xdf2bids(bemobil_config, numericalIDs, 'generalmetadata', generalInfo, 'motionmetadata', motionInfo, 'eegmetadata', eegInfo, 'participantmetadata', subjectInfo)



% Left out
bemobil_config.bids_motionconvert_custom    = [];
bemobil_config.bids_parsemarkers_custom     = [];
generalInfo.bidsroot                                = fullfile(bemobil_config.study_folder, bemobil_config.bids_data_folder); 
generalInfo = [];
generalInfo.task                                    = bemobil_config.bids_tasklabel;  