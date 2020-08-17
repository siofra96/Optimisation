$$ System Design Example

An n-th order system that has the following Finite Impulse Response (FIR):

![equation](http://latex.codecogs.com/gif.latex?\quad&space;y(t)=\sum^{n-1}_{\tau=0}h_{\tau}u(t-\tau))

where:

⋅⋅* ![equation](http://latex.codecogs.com/gif.latex?t\in{\Bbb&space;Z}:)

⋅⋅* ![equation](http://latex.codecogs.com/gif.latex?u:{\Bbb&space;Z}\rightarrow{\Bbb&space;R}) is the system input

⋅⋅* ![equation](http://latex.codecogs.com/gif.latex?y:{\Bbb&space;Z}\rightarrow{\Bbb&space;R}) is the system output 

⋅⋅* The![equation](http://latex.codecogs.com/gif.latex?h_{\tau})'s are the coefficients of the impulse response

![equation](http://latex.codecogs.com/gif.latex?minimise&space;\quad&space;max&space;|H(\omega_{k})-H_{des}(\omega_{k})|,&space;\quad&space;k=1,....,101\\)  
