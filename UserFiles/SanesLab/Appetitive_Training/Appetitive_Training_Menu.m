function varargout = Appetitive_Training_Menu(varargin)
% This GUI lanuches a menu that allows a user to select a
% appetitive training paradigm. Paradigms are as follows:
%
% Pure Tone Training Stage 1: 
%   A pure tone is generated by default.  Water is available at the spout
%   as long as the pure tone is on.  The user can use a manual override
%   control to momentarily pause water availability and pure tone
%   presentation.  The frequency and dB SPL level of the tone can be
%   edited by the user during the session.  This paradigm is appropriate
%   for animals in the very early stages of appetitive training.
%
% Pure Tone Training Stage 2:
%   The default condition is silence. A pure tone is generated and water
%   becomes available when the user contacts the manual override control.
%   The frequency and dB SPL level of the tone can be edited by the user
%   during the session. This paradigm is appropriate for animals in the
%   later stages of appetitive training (i.e. they've already learned to
%   quickly leave the spout once the sound stops).
%
% Noise Training Stage 1:
%   Identical to Pure Tone Training Stage 1, except a broadband gaussian
%   noise is used for training, instead of a pure tone. Only the dBSPL of
%   the noise is available for editing.
%
% Noise Training Stage 2:
%   Identical to Pure Tone Training Stage 2, except a broadband gaussian
%   noise is used for training, instead of a pure tone. Only the dBSPL of
%   the noise is available for editing.
%
% Written by ML Caras Jun 18 2015

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Appetitive_Training_Menu_OpeningFcn, ...
                   'gui_OutputFcn',  @Appetitive_Training_Menu_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Appetitive_Training_Menu is made visible.
function Appetitive_Training_Menu_OpeningFcn(hObject, eventdata, handles, varargin)

% Choose default command line output for Appetitive_Training_Menu
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

function varargout = Appetitive_Training_Menu_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;


 
%Appetitive Pure Tone Training: Stage 1
 function puretone1_Callback(hObject, eventdata, handles)
% Creates new timer for RPvds control of experiment
T = timerfind;
if ~isempty(T)
    stop(T);
    delete(T);
end
     

%Set reward type global variable based on toggle button
setRewardType(handles)

RPfile = {'C:\gits\epsych\UserFiles\SanesLab\RPVdsCircuits\Behavior_Appetitive\Training\Stage1\Appetitive_pure_tone_training_stage1.rcx'};
title_text = {'Appetitive Pure Tone Training: Stage 1'};
Appetitive_training(RPfile,title_text);

%Appetitive Pure Tone Training: Stage 2
 function puretone2_Callback(hObject, eventdata, handles)
% Creates new timer for RPvds control of experiment
T = timerfind;
if ~isempty(T)
    stop(T);
    delete(T);
end
     
%Set reward type global variable based on toggle button
setRewardType(handles)

RPfile = {'C:\gits\epsych\UserFiles\SanesLab\RPVdsCircuits\Behavior_Appetitive\Training\Stage2\Appetitive_pure_tone_training_stage2.rcx'};
title_text = {'Appetitive Pure Tone Training: Stage 2'};
Appetitive_training(RPfile,title_text);




%Appetitive Noise Training: Stage 1
 function noise1_Callback(hObject, eventdata, handles)
% Creates new timer for RPvds control of experiment
T = timerfind;
if ~isempty(T)
    stop(T);
    delete(T);
end

%Set reward type global variable based on toggle button
setRewardType(handles)
     
RPfile = {'C:\gits\epsych\UserFiles\SanesLab\RPVdsCircuits\Behavior_Appetitive\Training\Stage1\Appetitive_noise_training_stage1.rcx'};
title_text = {'Appetitive Noise Training: Stage 1'};
Appetitive_training(RPfile,title_text);

%Appetitive Noise Training: Stage 2
 function noise2_Callback(hObject, eventdata, handles)
% Creates new timer for RPvds control of experiment
T = timerfind;
if ~isempty(T)
    stop(T);
    delete(T);
end

%Set reward type global variable based on toggle button
setRewardType(handles)

RPfile = {'C:\gits\epsych\UserFiles\SanesLab\RPVdsCircuits\Behavior_Appetitive\Training\Stage2\Appetitive_noise_training_stage2.rcx'};
title_text = {'Appetitive Noise Training: Stage 2'};
Appetitive_training(RPfile,title_text);




%Appetitive AM Noise Training: Stage 1
function AMnoise1_Callback(hObject, eventdata, handles)
% Creates new timer for RPvds control of experiment
T = timerfind;
if ~isempty(T)
    stop(T);
    delete(T);
end

%Set reward type global variable based on toggle button
setRewardType(handles)
     
RPfile = {'C:\gits\epsych\UserFiles\SanesLab\RPVdsCircuits\Behavior_Appetitive\Training\Stage1\Appetitive_AMnoise_training_stage1.rcx'};
title_text = {'Appetitive AM Noise Training: Stage 1'};
Appetitive_training(RPfile,title_text);


%Appetitive AM Noise Training: Stage 2
function AMnoise2_Callback(hObject, eventdata, handles)
% Creates new timer for RPvds control of experiment
T = timerfind;
if ~isempty(T)
    stop(T);
    delete(T);
end

%Set reward type global variable based on toggle button
setRewardType(handles)

RPfile = {'C:\gits\epsych\UserFiles\SanesLab\RPVdsCircuits\Behavior_Appetitive\Training\Stage2\Appetitive_AMnoise_training_stage2.rcx'};
title_text = {'Appetitive Noise Training: Stage 2'};
Appetitive_training(RPfile,title_text);



%Appetitive AM Noise with Jitter Training: Stage 1
function AMjitter1_Callback(~, eventdata, handles)
% Creates new timer for RPvds control of experiment
T = timerfind;
if ~isempty(T)
    stop(T);
    delete(T);
end

%Set reward type global variable based on toggle button
setRewardType(handles)
     
RPfile = {'C:\gits\epsych\UserFiles\SanesLab\RPVdsCircuits\Behavior_Appetitive\Training\Stage1\Appetitive_AMjitter_training_stage1.rcx'};
title_text = {'Appetitive AM Jitter Training: Stage 1'};
Appetitive_training(RPfile,title_text);


%Appetitive AM Noise with Jitter Training: Stage 2
function AMjitter2_Callback(hObject, eventdata, handles)
% Creates new timer for RPvds control of experiment
T = timerfind;
if ~isempty(T)
    stop(T);
    delete(T);
end

%Set reward type global variable based on toggle button
setRewardType(handles)

RPfile = {'C:\gits\epsych\UserFiles\SanesLab\RPVdsCircuits\Behavior_Appetitive\Training\Stage2\Appetitive_AMjitter_training_stage2.rcx'};
title_text = {'Appetitive Jitter Training: Stage 2'};
Appetitive_training(RPfile,title_text);




%Appetitive Same-Different Pure Tone Training: Stage 1
 function SameDiff1_Callback(hObject, eventdata, handles)
% Creates new timer for RPvds control of experiment
T = timerfind;
if ~isempty(T)
    stop(T);
    delete(T);
end

%Set reward type global variable based on toggle button
setRewardType(handles)
     
RPfile = {'C:\gits\epsych\UserFiles\SanesLab\RPVdsCircuits\Behavior_Appetitive\Training\Stage1\Appetitive_SameDifferent_training_stage1.rcx'};
title_text = {'Appetitive Same-Different Tone Training: Stage 1'};
Appetitive_training(RPfile,title_text);

%Appetitive Same-Different Pure Tone Training: Stage 2
 function SameDiff2_Callback(hObject, eventdata, handles)
% Creates new timer for RPvds control of experiment
T = timerfind;
if ~isempty(T)
    stop(T);
    delete(T);
end
     
%Set reward type global variable based on toggle button
setRewardType(handles)

RPfile = {'C:\gits\epsych\UserFiles\SanesLab\RPVdsCircuits\Behavior_Appetitive\Training\Stage2\Appetitive_SameDifferent_training_stage2.rcx'};
title_text = {'Appetitive Same-Different Tone Training: Stage 2'};
Appetitive_training(RPfile,title_text);


%Set Reward Type Function
function setRewardType(handles)
         
         %Set reward type global variable based on toggle button
         global REWARDTYPE
         
         selection = get(handles.reward_panel,'selectedobject');
         
         switch get(selection,'tag')
             case 'water'
                 REWARDTYPE = 'water';
             case 'food'
                 REWARDTYPE = 'food';
         end


