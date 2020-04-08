function varargout = OknoWunsch(varargin)
% OKNOWUNSCH MATLAB code for OknoWunsch.fig
%      OKNOWUNSCH, by itself, creates a new OKNOWUNSCH or raises the existing
%      singleton*.
%
%      H = OKNOWUNSCH returns the handle to a new OKNOWUNSCH or the handle to
%      the existing singleton*.
%
%      OKNOWUNSCH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OKNOWUNSCH.M with the given input arguments.
%
%      OKNOWUNSCH('Property','Value',...) creates a new OKNOWUNSCH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before OknoWunsch_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to OknoWunsch_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help OknoWunsch

% Last Modified by GUIDE v2.5 18-Jun-2018 11:45:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @OknoWunsch_OpeningFcn, ...
                   'gui_OutputFcn',  @OknoWunsch_OutputFcn, ...
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


% --- Executes just before OknoWunsch is made visible.
function OknoWunsch_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to OknoWunsch (see VARARGIN)

% Choose default command line output for OknoWunsch
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes OknoWunsch wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = OknoWunsch_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function przerwa_Callback(hObject, eventdata, handles)
% hObject    handle to przerwa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of przerwa as text
%        str2double(get(hObject,'String')) returns contents of przerwa as a double


% --- Executes during object creation, after setting all properties.
function przerwa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to przerwa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kara_Callback(hObject, eventdata, handles)
% hObject    handle to kara (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kara as text
%        str2double(get(hObject,'String')) returns contents of kara as a double


% --- Executes during object creation, after setting all properties.
function kara_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kara (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dopasowanie_Callback(hObject, eventdata, handles)
% hObject    handle to dopasowanie (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dopasowanie as text
%        str2double(get(hObject,'String')) returns contents of dopasowanie as a double


% --- Executes during object creation, after setting all properties.
function dopasowanie_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dopasowanie (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in analizujRecznie.
function analizujRecznie_Callback(hObject, eventdata, handles)
contents = cellstr(get(handles.popMenu,'String'));
wybor = contents{get(handles.popMenu,'Value')};

A=get(handles.edit1,'String');
B=get(handles.edit2,'String');

if(strcmp(wybor,'Dopasowanie kropkowe'))
    W =str2num(get(handles.editW,'String'));
    T=str2num(get(handles.editT,'String'));
   
    [C]= wykres(A,B,W,T);
    spy(C);
    set(handles.tab,'data',C);
end

if(strcmp(wybor,'Dopasowanie lokalne'))
K=str2num(get(handles.kara,'String'));
D=str2num(get(handles.dopasowanie,'String'));
P=str2num(get(handles.przerwa,'String'));
Pocz=str2num(get(handles.ePocz,'String'));
Kon=str2num(get(handles.eKon,'String'));
[M,trasy]=local(A,B,K,D,P,Pocz,Kon);
set(handles.tab,'data',trasy);
imagesc(M);
colormap(gray);
colorbar;
title('Dopasowanie par sekwencji');
set(gca,'xtick',[]);
set(gca,'ytick',[])
xlabel('pierwsza sekwencja');
ylabel('druga sekwencja');  
end

if(strcmp(wybor,'Dopasowanie globalne '))
K=str2num(get(handles.kara,'String'));
D=str2num(get(handles.dopasowanie,'String'));
P=str2num(get(handles.przerwa,'String'));

Pocz=str2num(get(handles.ePocz,'String'));
Kon=str2num(get(handles.eKon,'String'));


[M,trasy]=myIdea(A,B,K,D,P,Pocz,Kon);
set(handles.tab,'data',trasy);
imagesc(M);
colormap(gray);
colorbar;
title('Dopasowanie par sekwencji');
set(gca,'xtick',[]);
set(gca,'ytick',[])
xlabel('pierwsza sekwencja');
ylabel('druga sekwencja');
end

if(strcmp(wybor,'MSA'))
K=str2num(get(handles.kara,'String'));
D=str2num(get(handles.dopasowanie,'String'));
P=str2num(get(handles.przerwa,'String'));

A=get(handles.edit1,'String');
B=get(handles.edit2,'String');
AA=get(handles.editS3,'String');
BB=get(handles.editS4,'String');

Pocz=str2num(get(handles.ePocz,'String'));
Kon=str2num(get(handles.eKon,'String'));

[kolejno]=kilka(A,B,AA,BB,K,D,P,Pocz,Kon);


    
end


% --- Executes on button press in s1.
function s1_Callback(hObject, eventdata, handles)
file = uigetfile({'*.fasta'}); 
set(hObject,'String',file);


% --- Executes on button press in s2.
function s2_Callback(hObject, eventdata, handles)
file = uigetfile({'*.fasta'}); 
set(hObject,'String',file);


% --- Executes on button press in analizujPlik.
function analizujPlik_Callback(hObject, eventdata, handles)
contents = cellstr(get(handles.popMenu,'String'));
wybor = contents{get(handles.popMenu,'Value')};

[~, A] = fastaread(get(handles.s1,'String'));
[~, B] = fastaread(get(handles.s2,'String'));

if(strcmp(wybor,'Dopasowanie kropkowe'))
    W=str2num(get(handles.editW,'String'));
    T=str2num(get(handles.editT,'String'));
    
    [C]= wykres(A,B,W,T);
    spy(C);
    set(handles.tab,'data',C);
end

if(strcmp(wybor,'Dopasowanie lokalne'))
K=str2num(get(handles.kara,'String'));
D=str2num(get(handles.dopasowanie,'String'));
P=str2num(get(handles.przerwa,'String'));
Pocz=str2num(get(handles.ePocz,'String'));
Kon=str2num(get(handles.eKon,'String'));
[M,trasy]=local(A,B,K,D,P,Pocz,Kon);
set(handles.tab,'data',trasy);
imagesc(M);
colormap(gray);
colorbar;
title('Dopasowanie par sekwencji');
set(gca,'xtick',[]);
set(gca,'ytick',[])
xlabel('pierwsza sekwencja');
ylabel('druga sekwencja');  
end

if(strcmp(wybor,'Dopasowanie globalne '))
K=str2num(get(handles.kara,'String'));
D=str2num(get(handles.dopasowanie,'String'));
P=str2num(get(handles.przerwa,'String'));
Pocz=str2num(get(handles.ePocz,'String'));
Kon=str2num(get(handles.eKon,'String'));
[M,trasy]=myIdea(A,B,K,D,P,Pocz,Kon);
set(handles.tab,'data',trasy);
imagesc(M);
colormap(gray);
colorbar;
title('Dopasowanie par sekwencji');
set(gca,'xtick',[]);
set(gca,'ytick',[])
xlabel('pierwsza sekwencja');
ylabel('druga sekwencja');

end
if(strcmp(wybor,'MSA'))
[~, AA] = fastaread(get(handles.s3,'String'));
[~, BB] = fastaread(get(handles.s4,'String'));

K=str2num(get(handles.kara,'String'));
D=str2num(get(handles.dopasowanie,'String'));
P=str2num(get(handles.przerwa,'String'));

A=get(handles.edit1,'String');
B=get(handles.edit2,'String');
AA=get(handles.editS3,'String');
BB=get(handles.editS4,'String');

Pocz=str2num(get(handles.ePocz,'String'));
Kon=str2num(get(handles.eKon,'String'));

[kolejno]=kilka(A,B,AA,BB,K,D,P,Pocz,Kon);

end


% --- Executes during object creation, after setting all properties.
function tab_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tab (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called




function ePocz_Callback(hObject, eventdata, handles)
% hObject    handle to ePocz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ePocz as text
%        str2double(get(hObject,'String')) returns contents of ePocz as a double


% --- Executes during object creation, after setting all properties.
function ePocz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ePocz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eKon_Callback(hObject, eventdata, handles)
% hObject    handle to eKon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eKon as text
%        str2double(get(hObject,'String')) returns contents of eKon as a double


% --- Executes during object creation, after setting all properties.
function eKon_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eKon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popMenu.
function popMenu_Callback(hObject, eventdata, handles)
% hObject    handle to popMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popMenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popMenu


% --- Executes during object creation, after setting all properties.
function popMenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editW_Callback(hObject, eventdata, handles)
% hObject    handle to editW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editW as text
%        str2double(get(hObject,'String')) returns contents of editW as a double


% --- Executes during object creation, after setting all properties.
function editW_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editT_Callback(hObject, eventdata, handles)
% hObject    handle to editT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editT as text
%        str2double(get(hObject,'String')) returns contents of editT as a double


% --- Executes during object creation, after setting all properties.
function editT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in zapisz.
function zapisz_Callback(hObject, eventdata, handles)
% hObject    handle to zapisz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
y=get(handles.tab,'data');
writetable(cell2table(y),'plik.txt');



function editS3_Callback(hObject, eventdata, handles)
% hObject    handle to editS3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editS3 as text
%        str2double(get(hObject,'String')) returns contents of editS3 as a double


% --- Executes during object creation, after setting all properties.
function editS3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editS3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editS4_Callback(hObject, eventdata, handles)
% hObject    handle to editS4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editS4 as text
%        str2double(get(hObject,'String')) returns contents of editS4 as a double


% --- Executes during object creation, after setting all properties.
function editS4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editS4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in s3.
function s3_Callback(hObject, eventdata, handles)
% hObject    handle to s3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
file = uigetfile({'*.fasta'}); 
set(hObject,'String',file);


% --- Executes on button press in s4.
function s4_Callback(hObject, eventdata, handles)
% hObject    handle to s4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
file = uigetfile({'*.fasta'}); 
set(hObject,'String',file);