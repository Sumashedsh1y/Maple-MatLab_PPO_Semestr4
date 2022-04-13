I = imread('9.jpg');
bw=rgb2gray(I);
level=150;
binar=bw>level;
binar=bwareaopen(binar,600);
binar=imclearborder(binar);
[B,L]=bwboundaries(binar,'noholes');
Reg=max(L(:));
%imshow(label2rgb(L))
stats=regionprops(L,'all')
Area=[stats.Area]
Dia=[stats.MaxFeretDiameter]
A=find(Area<5000 & Area>2500 & Dia<120)
Q=B(A);
imshow(label2rgb(L))
hold on
for z = 1:length(Q)
    plot(Q{z}(:,2),Q{z}(:,1),'Black','LineWidth',5)
end
hold off
Cloniki=length(A)
