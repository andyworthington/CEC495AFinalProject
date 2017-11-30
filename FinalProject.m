%% Tymothy Anderson, Andy Worthington, Ian Diebert
% CEC495a Final Project

% The program identifies unknown AFROTC ranks in images
close all
clear; clc;
addpath Unknowns Templates


% Load test image
testimg = imread('Test1.jpg');
testimg = rgb2hsv(testimg);
testimg = testimg(:,:,3);

thresh = 0.5216;
testimg = (testimg > 0.5216) & (testimg < 0.5922);
imshow(testimg);


% Imed = medfilt2(testimg,[100,100]);
% 
% testimg = Imed - testimg;
% testimg = testimg > 50;

% Load Templates
% for k = 1:6
%     template = imread(['O',sprintf('%2.3d',k),'.jpg']);
%   