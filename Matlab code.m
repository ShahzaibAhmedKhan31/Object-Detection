I = imread('image.png');
I=rgb2gray(I);
I=double(I)/255;

It = imread('target.jpg');
It=rgb2gray(It);
It=double(It)/255;

boxPoints = detectSURFFeatures(I);
scenePoints = detectSURFFeatures(It);
boxPoints = detectSURFFeatures(I);
scenePoints = detectSURFFeatures(It);
[boxFeatures, boxPoints] = extractFeatures(I, boxPoints);
[sceneFeatures, scenePoints] = extractFeatures(It, scenePoints);
boxPairs = matchFeatures(boxFeatures, sceneFeatures);
matchedBoxPoints = boxPoints(boxPairs(:, 1), :);
matchedScenePoints = scenePoints(boxPairs(:, 2), :);
figure;
showMatchedFeatures(I, It, matchedBoxPoints, matchedScenePoints, 'montage');
title('Putatively Matched Points (Including Outliers)');
