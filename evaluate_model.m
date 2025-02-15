clc;
clear;
%load the extracted features from all images within a dataset
%feature matrix should be nx8, where n is the number of images in a dataset

%x = load("features.mat")
x=sqrt(abs(x));
x(isnan(x))=0;

%Load the MOSs into the variable y
%y=	UWIQA_mos;

PLCC=[];
RMSE=[];
SRCC=[];

addpath('findrmse')
for i=1:1000
    i
cv = cvpartition(size(x,1),'HoldOut',0.2);
idx = cv.test;
Train_x = x(~idx,:);
Test_x  = x(idx,:);
Train_y = y(~idx,:);
Test_y  = y(idx,:);

Train_x = [ones(size(Train_x,1),1), Train_x];

model = regress(Train_y,Train_x);
X_test_bias = [ones(size(Test_x,1),1), Test_x];

% Predict Y values using the learned coefficients
pred = X_test_bias * model;

[delta,beta,a,b,diff] = findrmse2(t_ehdsm,Test_y);
PLCC=[PLCC;corr(a,b)];
SRCC=[SRCC;corr(a,b,'type','spearman')];
RMSE=[RMSE;(mean(diff.^2))^0.5];

end
median(PLCC)
median(SRCC)
median(RMSE)
