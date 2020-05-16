% Bildverarbeitung Praktikum 01
% Digitalisierung & Punktoperatoren
% Erstellt am 29.04.2020
% Author: Dimitri Dening
% Praktikumsgruppe: Y
%% 
close all % schlie�t alle offenen figures
clear all % l�scht alle Variablen im Workspace
clc % l�scht das Command Window     
%% Main
I = imread('sinxx22.bmp');
% I = imread('gesicht1.jpg');
k = resize_image(I);
figure('Name', 'Originalbild'), imshow(I);
figure('Name', 'verkleinertes Bild'), imshow(k);
%% Plotte Histogramm und kummuliertes Histogramm
[gHisto, kHisto] = histo(I);
%% Probe mit Inbuilt-Tools
% figure, imhist(I)
% figure, histogram(I, 'Normalization', 'probability')
% figure, histogram(I, 'Normalization', 'cdf')