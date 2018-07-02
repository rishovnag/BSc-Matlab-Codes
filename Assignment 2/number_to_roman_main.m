%number_to_words - Write a main function to convert number to words
clc;
close all;
clear all;
n1=input('\nEnter lower limit=');
n2=input('\nEnter upper limit=');
count=0;
    for i=n1:n2
        number_to_roman(i);
        fprintf('\n')
        count=count+1;
        if mod(count,15)==0
               ch=input('Press Enter key ---> \n');
               clc;
        end
    end
    %EOP