% File: Crealte_Letter_Combinations.m
% Programer: Stephen A. Gonzalez
% Date Created: 9/19/2023
% Purpose: 
%   Generate List of Bi-Grams via Combination and Permutation functions
%
% --------------------------------------------------------------------------- 
% Required files: 
%
% ---------------------------------------------------------------------------
% Output(s)
%   .CSV: Comma Sepparated Value File of Bi-Gram List


%% Generate Letter Combinations
% All Letters
%combi = nchoosek('ABCDEFGHIJKLMNOPQRSTUVWXYZ',2);

% Generate Letter Combinations (Consonants Only)
letterCombinations = nchoosek('BCDFGHJKLMNPQRSTVWXZ',2);


%% Generate Letter Permutations
letterPermutations = [];
for ii = 1:length(letterCombinations)
    temp = perms(letterCombinations(ii,:));
    letterPermutations = [letterPermutations; temp];
end


%% Convert Characters to Strings
strout = [];
for ii = 1:length(letterPermutations)
    temp = convertCharsToStrings(letterPermutations(ii,:));
    strout = [strout; temp];
end


%% Sort Bi-Grams
sorted = sort(strout);


%% Export Vector to .CSV
writematrix(sorted, '2-letter_OnsetBlends.csv')

