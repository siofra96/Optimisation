## System Design Example

An n-th order system that has the following Finite Impulse Response (FIR):

![equation](http://latex.codecogs.com/gif.latex?\quad&space;y(t)=\sum^{n-1}_{\tau=0}h_{\tau}u(t-\tau))

where:

* ![equation](http://latex.codecogs.com/gif.latex?t\in{\Bbb&space;Z}:)

* ![equation](http://latex.codecogs.com/gif.latex?u:{\Bbb&space;Z}\rightarrow{\Bbb&space;R}) is the system input

* ![equation](http://latex.codecogs.com/gif.latex?y:{\Bbb&space;Z}\rightarrow{\Bbb&space;R}) is the system output 

* The ![equation](http://latex.codecogs.com/gif.latex?h_{\tau})'s are the coefficients of the impulse response

The frequency response of the system is as follows:

![equation](http://latex.codecogs.com/gif.latex?\quad&space;H(\omega)=\sum^{n-1}_{t=0}h_{t}cos(t\omega)+j\sum^{n-1}_{t=0}h_{t}sin(t\omega))  

An optimisation program is formulated which aims to minimise the maximum difference between ![equation](http://latex.codecogs.com/gif.latex?H(\omega)) and 
![equation](http://latex.codecogs.com/gif.latex?H_{des}(\omega))

The resulting program is as follows:

minimise ![equation](http://latex.codecogs.com/gif.latex?\quad&space;max|H(\omega_{k})-H_{des}(\omega_{k})|,&space;\quad k=1,....,101\\)

such that ![equation](http://latex.codecogs.com/gif.latex?\quad&space;H(\omega)=\sum^{n-1}_{t=0}h_{t}cos(t\omega)+j\sum^{n-1}_{t=0}h_{t}sin(t\omega))

Using data from 'Desired_Response_Data.csv' where the first column denotes the normalised value of the frequency, ![equation](http://latex.codecogs.com/gif.latex?\omega), the second column denotes the absolute value of H in dB and the third column denotes the argument of H in degrees.

The optimisation problem regenerated as a second order conical program is as follows:

minimise ![equation](http://latex.codecogs.com/gif.latex?\quad&space;t)

such that ![equation](http://latex.codecogs.com/gif.latex?\quad&space;||A_{k}(h)-b_{k}||\leq t,&space;\quad k=1,....,101\\)

![equation](http://latex.codecogs.com/gif.latex?A_{k}=\begin{bmatrix}1&cos(\omega_{k})&....&cos((n-1)\omega_{k})\\0&-sin(\omega_{k})&....&-sin((n-1)\omega_{k})\end{bmatrix})

![equation](http://latex.codecogs.com/gif.latex?b_{k}=\begin{bmatrix}Real(H_{des}(\omega_{k})&space;\\Imaginary(H_{des}(\omega_{k})&space;\end{bmatrix})

![equation](http://latex.codecogs.com/gif.latex?h_{t}=\begin{bmatrix}h_{0}&space;\\...\\h_{n-1}\end{bmatrix})


