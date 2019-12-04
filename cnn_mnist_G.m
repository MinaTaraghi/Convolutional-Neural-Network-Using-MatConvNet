function varargout = cnn_mnist_G(varargin)
% CNN_MNIST_G MATLAB code for cnn_mnist_G.fig
%      CNN_MNIST_G, by itself, creates a new CNN_MNIST_G or raises the existing
%      singleton*.
%
%      H = CNN_MNIST_G returns the handle to a new CNN_MNIST_G or the handle to
%      the existing singleton*.
%
%      CNN_MNIST_G('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CNN_MNIST_G.M with the given input arguments.
%
%      CNN_MNIST_G('Property','Value',...) creates a new CNN_MNIST_G or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before cnn_mnist_G_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to cnn_mnist_G_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help cnn_mnist_G

% Last Modified by GUIDE v2.5 19-Dec-2015 20:59:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @cnn_mnist_G_OpeningFcn, ...
                   'gui_OutputFcn',  @cnn_mnist_G_OutputFcn, ...
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


% --- Executes just before cnn_mnist_G is made visible.
function cnn_mnist_G_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to cnn_mnist_G (see VARARGIN)

% Choose default command line output for cnn_mnist_G
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes cnn_mnist_G wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = cnn_mnist_G_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function load_name_Callback(hObject, eventdata, handles)
% hObject    handle to load_name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of load_name as text
%        str2double(get(hObject,'String')) returns contents of load_name as a double
handles.load_name_=get(hObject,'String');

% --- Executes during object creation, after setting all properties.
function load_name_CreateFcn(hObject, eventdata, handles)
% hObject    handle to load_name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function train_ratio_Callback(hObject, eventdata, handles)
% hObject    handle to train_ratio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of train_ratio as text
%        str2double(get(hObject,'String')) returns contents of train_ratio as a double
handles.train_ratio_=str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function train_ratio_CreateFcn(hObject, eventdata, handles)
% hObject    handle to train_ratio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function valid_ratio_Callback(hObject, eventdata, handles)
% hObject    handle to valid_ratio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of valid_ratio as text
%        str2double(get(hObject,'String')) returns contents of valid_ratio as a double
handles.valid_ratio_=str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function valid_ratio_CreateFcn(hObject, eventdata, handles)
% hObject    handle to valid_ratio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in save_btn.
function save_btn_Callback(hObject, eventdata, handles)
% hObject    handle to save_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function save_name_Callback(hObject, eventdata, handles)
% hObject    handle to save_name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of save_name as text
%        str2double(get(hObject,'String')) returns contents of save_name as a double
handles.save_name_=get(hObject,'String');
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function save_name_CreateFcn(hObject, eventdata, handles)
% hObject    handle to save_name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in start_btn.
function start_btn_Callback(hObject, eventdata, handles)
% hObject    handle to start_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

try
    stage_size=handles.stage_no_;
catch e
    stage_size=3;
end

try
    train_ratio=handles.train_ratio_;
catch e
    train_ratio=0.7;
end

try
    valid_ratio=handles.valid_ratio_;
catch e
    valid_ratio=0.3;
end

try
    pool_function=handles.pool_function_;
catch e
    pool_function=1;
end

try
    epoch_no=handles.epoch_no_;
catch e
    epoch_no=10;
end

try
    batch_size=handles.batch_size_;
catch e
    batch_size=100;
end

try
    learning_rate=handles.learning_rate_;
catch e
    learning_rate=0.001;
end

%%%%%%%%%%%%%%% Filter Sizes  %%%%%%%%%%%%%
try
    FS(1)=handles.fs1;
catch e
    FS(1)=4;
end

try
    FS(2)=handles.fs2;
catch e
    FS(2)=5;
end

try
    FS(3)=handles.fs3;
catch e
    FS(3)=3;
end

try
    FS(4)=handles.fs4;
catch e
    FS(4)=2;
end

%%%%%%%%%%%%%%   Filter Numbers%%%%%%%%
try
    FN(1)=handles.fn1;
catch e
    FN(1)=20;
end

try
    FN(2)=handles.fn2;
catch e
    FN(2)=50;
end

try
    FN(3)=handles.fn3;
catch e
    FN(3)=500;
end

try
    FN(4)=handles.fn4;
catch e
    FN(4)=20;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%
try
    pool_stride=handles.pool_stride_;
catch e
    pool_stride=2;
end

try
    conv_stride=handles.conv_stride_;
catch e
    conv_stride=1;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
try
    save_name=handles.save_name_;
catch e
    save_name='CNN1';
end

try
    load_name=handles.load_name_;
catch e
    load_name='CNN1';
end



[net_bn, info_bn] = cnn_mnist(...
  FN,FS,batch_size,train_ratio, valid_ratio, stage_size, pool_function,epoch_no,...
  learning_rate,conv_stride,pool_stride,'expDir', 'data/mnist-bnorm', 'useBnorm', true);

[net_fc, info_fc] = cnn_mnist(...
   FN,FS,batch_size,train_ratio, valid_ratio, stage_size, pool_function,epoch_no,...
  learning_rate,conv_stride,pool_stride,'expDir', 'data/mnist-baseline', 'useBnorm', false);

% figure(1) ; clf ;
% subplot(1,2,1) ;

% yyy=randn(1,20);
% plot(yyy);
images=loadMNISTImages('train-images.idx3-ubyte');

image=images(:,randi(6000));
image=reshape(image,[28 28]);
image=single(image);
i=1;
 w=net_fc.layers{2*i-1}.weights{1};
  y = vl_nnconv(image, w, []) ;
  figure('Name',strcat('Sample Output of Convolution Layer No. ',num2str(2*i-1)));
  vl_imarraysc(y);
  y=vl_nnpool(y,2);
  figure('Name',strcat('Sample Output of Pooling Layer No. ',num2str(2*i)));
  vl_imarraysc(y);
for i=2:stage_size
  w=net_fc.layers{2*i-1}.weights{1};
  y = vl_nnconv(y, w, []) ;
  figure('Name',strcat('Sample Output of Convolution Layer No. ',num2str(2*i-1)));
  vl_imarraysc(y);
   y=vl_nnpool(y,2);
  figure('Name',strcat('Sample Output of Pooling Layer No. ',num2str(2*i)));
  vl_imarraysc(y);
end
axes(handles.LPlot);
semilogy(info_fc.val.objective', 'o-') ; 
hold all ;
semilogy(info_bn.val.objective', '+--') ;
xlabel('Training samples [x 10^3]'); ylabel('energy') ;
grid on ;
h=legend(handles.LPlot,'BSLN', 'BNORM') ;
set(h,'color','none');
handles.LPlot.Title.String='objective' ;
axes(handles.RPlot);
plot(info_fc.val.error', 'o-') ; hold all ;
plot(info_bn.val.error', '+--') ;
h=legend(handles.RPlot,'BSLN-val','BSLN-val-5','BNORM-val','BNORM-val-5') ;
grid on ;
xlabel('Training samples [x 10^3]'); ylabel('error') ;
set(h,'color','none') ;
handles.RPlot.Title.String='error';
drawnow ;

% --- Executes on button press in load_btn.
function load_btn_Callback(hObject, eventdata, handles)
% hObject    handle to load_btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function learning_rate_Callback(hObject, eventdata, handles)
% hObject    handle to learning_rate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of learning_rate as text
%        str2double(get(hObject,'String')) returns contents of learning_rate as a double
handles.learning_rate_=str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function learning_rate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to learning_rate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1



function stage_no_Callback(hObject, eventdata, handles)
% hObject    handle to stage_no (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of stage_no as text
%        str2double(get(hObject,'String')) returns contents of stage_no as a double
handles.stage_no_=str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function stage_no_CreateFcn(hObject, eventdata, handles)
% hObject    handle to stage_no (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pool_function.
function pool_function_Callback(hObject, eventdata, handles)
% hObject    handle to pool_function (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pool_function contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pool_function
handles.pool_function_=get(hObject,'Value');
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function pool_function_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pool_function (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function LPlot_CreateFcn(hObject, eventdata, handles)
% hObject    handle to LPlot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate LPlot


% --- Executes during object creation, after setting all properties.
function RPlot_CreateFcn(hObject, eventdata, handles)
% hObject    handle to RPlot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate RPlot



function filter_size_Callback(hObject, eventdata, handles)
% hObject    handle to filter_size (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of filter_size as text
%        str2double(get(hObject,'String')) returns contents of filter_size as a double
handles.filter_size_=str2double(get(hObject,'String'));
guidata(hObject,handles);
% --- Executes during object creation, after setting all properties.
function filter_size_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filter_size (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function epoch_no_Callback(hObject, eventdata, handles)
% hObject    handle to epoch_no (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of epoch_no as text
%        str2double(get(hObject,'String')) returns contents of epoch_no as a double
handles.epoch_no_=str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function epoch_no_CreateFcn(hObject, eventdata, handles)
% hObject    handle to epoch_no (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function batch_size_Callback(hObject, eventdata, handles)
% hObject    handle to batch_size (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of batch_size as text
%        str2double(get(hObject,'String')) returns contents of batch_size as a double
handles.batch_size_=str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function batch_size_CreateFcn(hObject, eventdata, handles)
% hObject    handle to batch_size (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FS1_Callback(hObject, eventdata, handles)
% hObject    handle to FS1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FS1 as text
%        str2double(get(hObject,'String')) returns contents of FS1 as a double
handles.fs1=str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function FS1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FS1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FS2_Callback(hObject, eventdata, handles)
% hObject    handle to FS2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FS2 as text
%        str2double(get(hObject,'String')) returns contents of FS2 as a double
handles.fs2=str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function FS2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FS2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FS3_Callback(hObject, eventdata, handles)
% hObject    handle to FS3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FS3 as text
%        str2double(get(hObject,'String')) returns contents of FS3 as a double
handles.fs3=str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function FS3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FS3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FS4_Callback(hObject, eventdata, handles)
% hObject    handle to FS4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FS4 as text
%        str2double(get(hObject,'String')) returns contents of FS4 as a double
handles.fs4=str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function FS4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FS4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FN1_Callback(hObject, eventdata, handles)
% hObject    handle to FN1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FN1 as text
%        str2double(get(hObject,'String')) returns contents of FN1 as a double
handles.fn1=str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function FN1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FN1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FN2_Callback(hObject, eventdata, handles)
% hObject    handle to FN2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FN2 as text
%        str2double(get(hObject,'String')) returns contents of FN2 as a double
handles.fn2=str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function FN2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FN2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FN3_Callback(hObject, eventdata, handles)
% hObject    handle to FN3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FN3 as text
%        str2double(get(hObject,'String')) returns contents of FN3 as a double
handles.fn3=str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function FN3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FN3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FN4_Callback(hObject, eventdata, handles)
% hObject    handle to FN4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FN4 as text
%        str2double(get(hObject,'String')) returns contents of FN4 as a double
handles.fn4=str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function FN4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FN4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function conv_stride_Callback(hObject, eventdata, handles)
% hObject    handle to conv_stride (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of conv_stride as text
%        str2double(get(hObject,'String')) returns contents of conv_stride as a double
handles.conv_stride_=str2double(get(hObject,'String'));
guidata(hObject,handles);
% --- Executes during object creation, after setting all properties.
function conv_stride_CreateFcn(hObject, eventdata, handles)
% hObject    handle to conv_stride (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pool_stride_Callback(hObject, eventdata, handles)
% hObject    handle to pool_stride (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pool_stride as text
%        str2double(get(hObject,'String')) returns contents of pool_stride as a double
handles.pool_stride_=str2double(get(hObject,'String'));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function pool_stride_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pool_stride (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
