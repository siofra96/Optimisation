

At a surfing competition 8 sponsors were invited to come and watch the competition. 10 competitors took part in the competition. 
Each sponsor ranked each competitor according to their performance in the competition and suitability for the sponsorship brand. 
Following the competition, each sponsor gave a talk about their brand and each competitor ranked each sponsor according to how much 
they would like to be sponsored by and represent that brand. 

This program finds the optimal network of collaborators whereby each sponsor may have a maximum of 4 competitors under their sponsorship
and each competitor may be sponsored by 5 sponsors maximum.

The ranking works as follows:
A sponsor gives between 0 and 5 points to a competitor, 0 is given if it does not intend to collaborate and
5 points in the case of strong intention to collaborate. The same rule applies for each competitor to rank a sponsor.

The table of rankings created by the sponsors is
![equation](http://latex.codecogs.com/gif.latex?R^{s\rightarrow&space;c})
The table of rankings created by the competitors is
![equation](http://latex.codecogs.com/gif.latex?R^{c\rightarrow&space;s})

Based on these two ranking matrices, a consensus matrix C is created where 
![equation](http://latex.codecogs.com/gif.latex?C_{ij}=R^{s\rightarrow&space;c}_{ij}xR^{c\rightarrow&space;s}_{ji})

The objective function is to maximise 
