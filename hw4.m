function hw4()

close all;
format compact;

imdata = imread('tent.jpg');
figure, imshow('tent.jpg');
datacursormode on;
%imdata
%imgwho = whos('imdata');
%imgwho.size
%{
dimArr = num2cell(imgwho.size);
[num_rows num_cols num_channels] = dimArr{:};
workArr = [num_rows num_cols num_channels];
num_rows(2)
%}

imdata(200,100,1) = 255;
imdata(200,100,2) = 0;
imdata(200,100,3) = 0;
%imdata(200,100,:)
newImg = cat(3, imdata(:,:,1), imdata(:,:,2), imdata(:,:,3));
figure, imshow(newImg);
datacursormode on;


%____________Part A END____________%

%p1 = imdata(2, 2);
%imdata(2,2,:)

figure, imshow('repliAx2.png'); % center at 690, 737
datacursormode on;

%whos('imdata')
%imdata(:,:,1)


%THIS COMMENT STUB STATES THAT 
%THIS CODE IS THE PROPERTY OF OMAR R.G. (UofA Student)

%_____part_B_END_____%


camMat1 = load('camera_matrix_1.txt');
camMat2 = load('camera_matrix_2.txt');
worldCoords = load('world_coords.txt');
imageCoords = load('image_coords.txt');
gridrep = imread('repliAx2.png');
%imageCoords(1,2)
figure, imshow(gridrep);
hold on
for i = 1:15
    %gridrep(imageCoords(i,2), imageCoords(i, 1), 1) = 255;
    %gridrep(imageCoords(i,2), imageCoords(i, 1), 2) = 0;
    %gridrep(imageCoords(i,2), imageCoords(i, 1), 3) = 0;
    plot(imageCoords(i, 1), imageCoords(i,2), 'r*');
    hold on
end
hold off
%imdata(200,100,1) = 255;
%imdata(200,100,2) = 0;
%imdata(200,100,3) = 0;

%whos('camMat1')
%whos('imageCoords')
%camMat1
%camMat2
%ogcammat = estimateCameraMatrix(imageCoords, worldCoords);
%ogcammat'
%whos('ogcammat')
%imageCoords
%size(imageCoords(:,1))
homoimgcords = [imageCoords ones(size(imageCoords(:,1)))];
%homoimgcords
homoworldcords = [worldCoords ones(size(worldCoords(:,1)))];
%worldCoords
%homoworldcords
%whos('homoworldcords')
%whos('camMat1')

r = [1 0 0; 0 1 0; 0 0 1];
t = [1 1 1];




end