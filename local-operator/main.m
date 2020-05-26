% Bildverarbeitung Praktikum 02
% Lokale Operatoren
% Erstellt am 12.05.2020
% Author: Dimitri Dening
% Praktikumsgruppe: Y
%% 
close all % schlie�t alle offenen figures
clear all % l�scht alle Variablen im Workspace
clc % l�scht das Command Window     
%% Faltung Teil 1a und b):
load A.mat;
load F.mat;
K=faltung(A, F);
disp('Faltung von A mit Filter F:')
disp(K);
sobel(A);
%% Main - Sobel-Operator
I = imread('FH1.jpg');
[Gx]=sobel(I);
imagesc(Gx); colormap(gray);
% invert(K);
%% Gesichter
I = imread('gesicht1.jpg');
% sobel(I);
L=gesichtSobn(I);
gesichtGrafik(I,L);

%% Zusatz
I = imread('KreisSin1.bmp');
sobel(I);

%% Seminar 1 Aufgabe 6
A = [1 1 0 0 0;1 1 1 0 0;1 1 1 1 0;1 1 1 1 0;0 0 1 1 0;];
sobel(A);