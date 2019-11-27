function varargout = DAApp(varargin)
% DAAPP MATLAB code for DAApp.fig
%      DAAPP, by itself, creates a new DAAPP or raises the existing
%      singleton*.
%
%      H = DAAPP returns the handle to a new DAAPP or the handle to
%      the existing singleton*.
%
%      DAAPP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DAAPP.M with the given input arguments.
%
%      DAAPP('Property','Value',...) creates a new DAAPP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DAApp_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DAApp_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DAApp

% Last Modified by GUIDE v2.5 24-Oct-2019 12:32:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DAApp_OpeningFcn, ...
                   'gui_OutputFcn',  @DAApp_OutputFcn, ...
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


% --- Executes just before DAApp is made visible.
function DAApp_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DAApp (see VARARGIN)
global Data
% Choose default command line output for DAApp
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DAApp wait for user response (see UIRESUME)
% uiwait(handles.figure1);
% use same seed at every iteration
Data.Seed=unidrnd(100,1);


% --- Outputs from this function are returned to the command line.
function varargout = DAApp_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

%% --- Executes when selected object is changed in uipanel2.
function uipanel2_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel2 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)

run Main

%% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over radiobutton1.
function radiobutton1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%%
% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over radiobutton2.
function radiobutton2_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




%% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

run Main


%% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

run Main

%% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

run Main


%% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

run Main

%% --- Executes on slider movement.
function MiscCost_Callback(hObject, eventdata, handles)
% hObject    handle to MiscCost (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

run Main

%%
function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
run Main

%%
% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run Main

%% ==============================================
% % --- Executes during object creation, after setting all properties.
 function slider5_CreateFcn(hObject, eventdata, handles) % hObject
% handle to slider5 (see GCBO) % eventdata  reserved - to be defined in a
% future version of MATLAB % handles    empty - handles not created until
% after all CreateFcns called
% 
% % Hint: slider controls usually have a light gray background. if
% isequal(get(hObject,'BackgroundColor'),
% get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor',[.9 .9 .9]);
% end
% 
% % --- Executes during object creation, after setting all properties.
 function slider6_CreateFcn(hObject, eventdata, handles) % hObject
% handle to slider6 (see GCBO) % eventdata  reserved - to be defined in a
% future version of MATLAB % handles    empty - handles not created until
% after all CreateFcns called
% 
% % Hint: slider controls usually have a light gray background. if
% isequal(get(hObject,'BackgroundColor'),
% get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor',[.9 .9 .9]);
% end
% 
% % --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles) % hObject
% handle to slider1 (see GCBO) % eventdata  reserved - to be defined in a
% future version of MATLAB % handles    empty - handles not created until
% after all CreateFcns called
% 
% % Hint: slider controls usually have a light gray background. if
% isequal(get(hObject,'BackgroundColor'),
% get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor',[.9 .9 .9]);
% end
% 
% % --- Executes during object creation, after setting all properties.
 function slider2_CreateFcn(hObject, eventdata, handles) % hObject
% handle to slider2 (see GCBO) % eventdata  reserved - to be defined in a
% future version of MATLAB % handles    empty - handles not created until
% after all CreateFcns called
% 
% % Hint: slider controls usually have a light gray background. if
% isequal(get(hObject,'BackgroundColor'),
% get(0,'defaultUicontrolBackgroundColor'))
%     set(hObject,'BackgroundColor',[.9 .9 .9]);
% end





% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TP_Callback(hObject, eventdata, handles)
% hObject    handle to TP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TP as text
%        str2double(get(hObject,'String')) returns contents of TP as a double


% --- Executes during object creation, after setting all properties.
function TP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TN_Callback(hObject, eventdata, handles)
% hObject    handle to TN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TN as text
%        str2double(get(hObject,'String')) returns contents of TN as a double


% --- Executes during object creation, after setting all properties.
function TN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FP_Callback(hObject, eventdata, handles)
% hObject    handle to FP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FP as text
%        str2double(get(hObject,'String')) returns contents of FP as a double


% --- Executes during object creation, after setting all properties.
function FP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes during object creation, after setting all properties.
function MiscCost_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MiscCost (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function FN_Callback(hObject, eventdata, handles)
% hObject    handle to FN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FN as text
%        str2double(get(hObject,'String')) returns contents of FN as a double


% --- Executes during object creation, after setting all properties.
function FN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function APER_Callback(hObject, eventdata, handles)
% hObject    handle to APER (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of APER as text
%        str2double(get(hObject,'String')) returns contents of APER as a double


% --- Executes during object creation, after setting all properties.
function APER_CreateFcn(hObject, eventdata, handles)
% hObject    handle to APER (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
