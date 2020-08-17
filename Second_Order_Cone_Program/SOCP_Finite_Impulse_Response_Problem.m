
% the problem in SOCP form is rewritten as 
%minimise t
%s.t.  ||A_k*h-b_k||<=t, k=1...,101 

clc, clear all

x0=[1; -0.1; -0.1; 0.1; 0.1; 0.1; 0.1]; %initial guess for t

z=[1; 0; 0; 0; 0; 0; 0];

% Call in desired frequency response 
T = readtable('Desired_Response_Data.csv');
omega=T{:,1}; %specify the range of frequency values
abs_H_des=T{:,2};%specify the modulus of the desired response
arg_H_des=T{:,3};%specify the argument of the desired response

%Optimisation Section

fun=@(x) dot(x, z); %objective function to minimise, minimise t which is represented by x(1)


[h_opt, fval] = fmincon(fun,x0,[],[],[],[],[],[],@constr);


N=6; 
for j=1:N
    t(j)=j-1;
end

%get the desired frequency response of the system 
for i=1:length(abs_H_des)
 H_des(i, 1)=abs_H_des(i)*cosd(arg_H_des(i));
 H_des(i, 2)=abs_H_des(i)*sind(arg_H_des(i));
end

h_t=[h_opt(2:length(h_opt), 1)] %take values of h from optimal vector output
for i=1:length(omega)
H_out(i, 1)=dot(cos(omega(i)*t), h_t);
H_out(i, 2)=dot(-sin(omega(i)*t), h_t);
end

%Plot results of Optimisation 
plot(omega, H_des(:, 1))
hold on 
plot(omega, H_out(:, 1))
plot(omega, H_des(:, 2))  
plot(omega, H_out(:, 2))
legend('real component desired frequency response', 'real component output frequency response', 'imaginary component desired frequency response', 'imaginary component output frequency response')
hold off  
        
        
        

function [F_ineq, F_eq] =  constr(x) %declare non-linear equality and inequality constraints
T = readtable('Desired_Response_Data.csv');
omega=T{:,1}; %specify the range of frequency values
abs_H_des=T{:,2};%specify the modulus of the desired response
arg_H_des=T{:,3};%specify the argument of the desired response

N=6; 
for j=1:N
    t(j)=j-1;
end


N_indexer=2*length(omega); % this will be used to create the index for the matrix A and b with alternating rows representing the real and imaginary parts 

for k=2:2:N_indexer
    omega_indexer=k/2; %used to index through values of omega, length of omega is half length of N_indexer    
    for i=1:1:N
        A(k-1,i)=cos(omega(omega_indexer)*t(i)); %real part of H(omega)
        A(k,i)=-sin(omega(omega_indexer)*t(i)); %imaginary part of H(omega)
    end
b(k-1,1)=abs_H_des(omega_indexer)*cosd(arg_H_des(omega_indexer)); %real part of H_des(omega)
b(k,1)=abs_H_des(omega_indexer)*sind(arg_H_des(omega_indexer));%imaginary part of H_des(omega)
end

for k=2:2:N_indexer %use to index through matrix A and b
    F_ineq_indexer=k/2; %use this to index through inequality constraints
    %each non linear constraint states that ||A_k*h-b_k||-t<=0
    F_ineq(F_ineq_indexer)= norm((A(k-1:k,:)*[x(2);x(3);x(4);x(5);x(6);x(7)])-(b(k-1:k, 1)), 2)-x(1);
end
F_eq = []; %no non-linear inequality constraints      
end

