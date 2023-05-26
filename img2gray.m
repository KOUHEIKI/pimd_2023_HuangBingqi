function varargout = img2gray(varargin)
% IMG2GRAY MATLAB code for img2gray.fig
%      IMG2GRAY, by itself, creates a new IMG2GRAY or raises the existing
%      singleton*.
%
%      H = IMG2GRAY returns the handle to a new IMG2GRAY or the handle to
%      the existing singleton*.
%
%      IMG2GRAY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in IMG2GRAY.M with the given input arguments.
%
%      IMG2GRAY('Property','Value',...) creates a new IMG2GRAY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before img2gray_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to img2gray_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help img2gray

% Last Modified by GUIDE v2.5 26-May-2023 11:37:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @img2gray_OpeningFcn, ...
                   'gui_OutputFcn',  @img2gray_OutputFcn, ...
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


% --- Executes just before img2gray is made visible.
function img2gray_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to img2gray (see VARARGIN)

% Choose default command line output for img2gray
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes img2gray wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = img2gray_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname]=uigetfile(...
        {'*.bmp;*.jpg;*.png;*.jpeg','ImageFiles(*.bmp,*.jpg,*.png,*.jpeg)';...
            '*.*','AllFiles(*.*)'},...
            'Pickanimage');
    axes(handles.axes1);
    global fpath;
    fpath=[pathname filename];
    img_1=imread(fpath);
    imshow(img_1);
    title('image')

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 axes(handles.axes2);
    global fpath;
    img_1=imread(fpath);
    img_2=rgb2gray(img_1);
    imshow(img_2)
     title('gray image')

    
