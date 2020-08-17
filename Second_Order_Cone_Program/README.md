# Optimisation
Problem 5: System Design
========================

1\. The optimisation program would be as follows:
$$minimise \\quad max \|H(\\omega\_{k})-H\_{des}(\\omega\_{k})\|, \\quad k=1,...., 101\\\\$$
$$s.t. \\quad H(\\omega)=\\sum^{n-1}\_{t=0}h\_{t}cos(t\\omega)+j\\sum^{n-1}\_{t=0}h\_{t}sin(t\\omega)$$
The goal is to minimise the maximum discrepancy between the difference
in the desired frequency response and the frequency response the system
is able to achieve. There are no additional constraints that need to be
added to the program yet. The values of *h*<sub>*t*</sub> are free
variables.  
. The optimisation problem regenerated as a second order conical program
is as follows:
*m**i**n**i**m**i**s**e*  *t*
$$s.t. \\quad \|\|A\_{k}(h)-b\_{k}\|\|\\leq t, \\quad k=1,...., 101\\\\$$
$$A\_{k}=
\\begin{bmatrix}
1&cos(\\omega\_{k})&....&cos((n-1)\\omega\_{k}) \\\\
0&-sin(\\omega\_{k})&....&-sin((n-1)\\omega\_{k})
\\end{bmatrix}$$
$$b\_{k}=
\\begin{bmatrix}
Real(H\_{des}(\\omega\_{k}) \\\\
Imaginary(H\_{des}(\\omega\_{k}) 
\\end{bmatrix}$$
$$h\_{t}=
\\begin{bmatrix}
h\_{0} \\\\
...\\\\
h\_{n-1}
\\end{bmatrix}$$
