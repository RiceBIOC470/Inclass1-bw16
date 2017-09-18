%AW: Looks good. 0.98/1. See my comments below.  

%InClass1: some simple excerises to get started with MATLAB. Please complete by
% the second class. Answer questions in comments and return assignment via
% github
%% numbers vs strings
% Run the following two sections. explain why one gives a sensible result and the other doesn't
% Can you explain the value of the variable b? 
x = 1; 
y = x + x
% Bingyan Wu: x is assigned to the number 1, therefore y can be arithmetically calculated as 2
%%
a = '1';
b = a+a
% Bingyan Wu:a was defined as a character instead of the number 1
%% concatenation
% what is being done by the following statements? what is the difference between x2 and a2? 
% what is the difference between x2 and x2b (hint run the size command on
% these arrays and explain the results). 

x2 = [x x]
% Bingyan Wu: it is making a one row, two columns array with 1 and 1 in it
a2 = [a a]
% Bingyan Wu: it is giving a character 11
x2b = [x; x]
% Bingyan Wu: it is making a two rows, one column array with 1 and 1 in it
% Bingyan Wu: since x is defined as an interger, therefore x2 is making a numeric array; a is defined as character 1, therefore it is making a character array
% Bingyan Wu: in x2b, the semicolon makes another row
%% = vs ==, isequal
% explain why the identical commands with the == commands give different answers 
% hint: check the values of a and b as you execute the following statements
% if necessary. 
a = 1; b =2; 

a == b
% Bingyan Wu: it is returning logical 0, which is false; because a is assigned as 1
% and b is assigned as 2, a does not equal b, therefore it returns false
a = b;
a == b
% Bingyan Wu: it is returning logical 1, which is true; because b is
% assigned to a, a equals b, therefore it returns true


%explain the results of the following operations:
a = [1, 2, 4];
b = [0,2,7];
a == b
% Bingyan Wu: it is returning a one row, three columns logical array 0 1 0;
% because it it comparing elements in arrays a and b; in first column, 1
% does not equal 0, in the second column 2 equals 2, and in the third
% column 4 does not equal 7, therefore it returns 0 1 0, which is false
% true false

%explain why this gives an error:

b = [2, 3];
a == b
% Bingyan Wu: in order to compare two arrays, they must have same
% dimensions, but a and b does not have same dimensions, and thus cannot be
% compared

%explain why this does not give an error
b = 2;
a == b 
% b is assigned as an integer. it is comparing each element in array a to 2
% and returns a logical array saying if each element in a equals 2
%%  : operator 
%(hint for the following type "help colon" at the command line to see
% how the ":" operator works
% the following makes an array of the numbers from one to ten: 
oneToTen = 1:10;

%here are two ways to make the array of numbers from 1 to twenty
%explain how the second line works.
1:20
[oneToTen, oneToTen+10]
% Bingyan Wu, it is combining two arrays, and makes an array same as 1:20

% do each of the following in two different ways, by manipulating the array
% oneToTen and by defining it concisely from scratch

% 1. even numbers from two to twenty
% Bingyan Wu: a = 2:2:20
% Bingyan Wu: a = 2:2:10; [a,a+10]
%AW: these do not use the oneToTen array. as in 2*oneToTen. -0.02.

% 2. odd numbers from one to nineteen
% Bingyan Wu: b = 1:2:19
% Bingyan Wu: b = 1:2:9; [b,b+10]

% 3. Even numbers in reverse order from twenty to two (hint lookup the
% matlab function fliplr)

% Bingyan Wu: c = fliplr(2:2:20)

% explain why the fliplr funciton no longer works and find a different
% matlab function that performs an equivalent function on the same array
oneToTen = oneToTen';
fliplr(oneToTen)
% Bingyan Wu: the first line converts the array to a vertical array and
% therefore cannot be flipped
% Bingyan Wu: fliplr(rot90(oneToTen))
%AW: Ok, see also flipud. 

%% matrices, . operator

%look at the matrix this defines. Note the other functions zeros, eye, and
%rand which can define matrices. 

m1 = ones(2);
m2 = 2*ones(2);

%explain the output of these two commands:
m1*m2
% Bingyan Wu: this command multiplies the m1 and m2 matrices
m1.*m2
% Bingyan Wu: this command multiplies each corresponding element in two
% matrices and returns the outcome to the resulting matrix

%explain this command:
m2./m1
% Bingyan Wu: this command divide element in m2 by the corresponding
% element in m1 and returns the resulting matrix
%extra credit: explain why this command gives a warning:
m2/m1
% Bingyan Wu: because a matrix cannot be divided by another matrix,unless
% it is product of two matrices

%% access particular elements and groups of elements

%define a random matrix

rand_nums = rand(5);

%explain what is being done in each of the following lines

rand_nums(2,3)
% Bingyan Wu: it is returing the number in second row, third column
% generated in the matrix

rand_nums(2:4,3)
% Bingyan Wu: it is returning the third column, row 2 to 4

rand_nums(1:2,3:4)
% Bingyan Wu: it is returning rows 1 to 2 and columns 3 to 4

rand_nums(:,2)
% Bingyan Wu: it is returning the second column

rand_nums(1,:)
% Bingyan Wu: it is returning the first row

rand_nums(:,[1 3 5])
% Bingyan Wu: it is returning columns 1, 3 and 5
