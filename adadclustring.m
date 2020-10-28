clear all;
close all;
clc;
A=dlmread('C:\Users\Mehrdad1\Downloads\Compressed\Data\TrainData.txt');
N=dlmread('C:\Users\Mehrdad1\Downloads\Compressed\Data\TestData.txt');
part = input('part A , B are respectively 1 and 2,Enter the number you are testing');
n = input('please enter the sub part you are testing , in case of part A it can be 1,2,3,4 and in case of part B it can be 1,2,3:');
B=A(1,:);
if(part==1)
switch n
    %------------------------------
    case 1
    for i=1:10
     k(i,:)=randi([0 1], [1 1200]);
    end
    [idx,c]=kmeans(A,10,'start',k);
    for j=1:10
       B=c(j,:);
       row=reshape(B,[30 40]);
       figure()
       imshow(row')
    end       

    %------------------------------
    case 2
%         m=[];
%      for i=0:10
%          m=randi([1 20000]);
%          k(i,:)= A(m);  
%      end
%      [idx,c]=kmeans(A,10,'start',k);
%      for j=1:10
%      B=c(j,:);
%      row=reshape(B,[30 40]);
%      figure()
%      imshow(row')
%     end
    %------------------------------
    case 3
     for i=0:9
         summation = A(i*(2000)+1:2000*(i+1),:);
         k(i+1,:)=mean(summation);
     end
     [idx,c]=kmeans(A,10,'start',k);
     for j=1:10
          B=c(j,:);
          row=reshape(B,[30 40]);
          figure()
          imshow(row')
     end       
     
    %------------------------------
    case 4
        k(1,:)=A(3,:);   %0
        k(2,:)=A(452,:); %1
        k(3,:)=A(4,:);   %2
        k(4,:)=A(405,:); %3
        k(5,:)=A(55,:);  %4
        k(6,:)=A(2,:);   %5
        k(7,:)=A(964,:); %6
        k(8,:)=A(5,:);   %7
        k(9,:)=A(1138,:);%8
        k(10,:)=A(126,:);%9
        [idx,c]=kmeans(A,10,'start',k);
         for j=1:10
          B=c(j,:);
          row=reshape(B,[30 40]);
          %figure , imshow(row')
          numberarray=repmat(row' , [1 1 1 1 1 1 1 1 1 10]);
          montage(numberarray);
        end         
    end
end 
if(part == 2)
    switch n
    %------------------------------
    case 1
    for i=1:20
     k(i,:)=randi([0 1], [1 1200]);
    end
    [idx,c]=kmeans(A,20,'start',k);
    for j=1:20
       B=c(j,:);
       row=reshape(B,[30 40]);
       figure()
       imshow(row')
    end       

    %------------------------------
    case 2
%         m=[];
%      for i=0:10
%          m=randi([1 20000]);
%          k(i,:)= A(m);  
%      end
%      [idx,c]=kmeans(A,10,'start',k);
%      for j=1:10
%      B=c(j,:);
%      row=reshape(B,[30 40]);
%      figure()
%      imshow(row')
%     end
    %------------------------------
    case 3
     for i=0:19
         summation = A(i*(1000)+1:1000*(i+1),:);
         k(i+1,:)=mean(summation);
     end
     [idx,c]=kmeans(A,20,'start',k);
     for j=1:20
          B=c(j,:);
          row=reshape(B,[30 40]);
          figure()
          imshow(row')
     end       
     
    %------------------------------
    end
end   
if(part==3)
    %no idea what so ever :)
end


