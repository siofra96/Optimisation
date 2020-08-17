<h1 class="unnumbered" id="problem-5-system-design">Problem 5: System Design</h1>
<p>1. The optimisation program would be as follows: <span class="math display">\[minimise \quad max |H(\omega_{k})-H_{des}(\omega_{k})|, \quad k=1,...., 101\\\]</span> <span class="math display">\[s.t. \quad H(\omega)=\sum^{n-1}_{t=0}h_{t}cos(t\omega)+j\sum^{n-1}_{t=0}h_{t}sin(t\omega)\]</span> The goal is to minimise the maximum discrepancy between the difference in the desired frequency response and the frequency response the system is able to achieve. There are no additional constraints that need to be added to the program yet. The values of <span class="math inline">\(h_{t}\)</span> are free variables.<br />
. The optimisation problem regenerated as a second order conical program is as follows: <span class="math display">\[minimise\quad t\]</span> <span class="math display">\[s.t. \quad ||A_{k}(h)-b_{k}||\leq t, \quad k=1,...., 101\\\]</span> <span class="math display">\[A_{k}=
\begin{bmatrix}
1&amp;cos(\omega_{k})&amp;....&amp;cos((n-1)\omega_{k}) \\
0&amp;-sin(\omega_{k})&amp;....&amp;-sin((n-1)\omega_{k})
\end{bmatrix}\]</span> <span class="math display">\[b_{k}=
\begin{bmatrix}
Real(H_{des}(\omega_{k}) \\
Imaginary(H_{des}(\omega_{k}) 
\end{bmatrix}\]</span> <span class="math display">\[h_{t}=
\begin{bmatrix}
h_{0} \\
...\\
h_{n-1}
\end{bmatrix}\]</span></p>
