## Deterministic Battery Optimisation

This is a program which utilises the Gurobi solver to assign the optimal temporal charge-discharge profile of a battery across a day maximising profit through arbitrage.

The battery is assumed to operate in both the day ahead and balancing market, assuming a perfect forecast of prices and self-scheduling.

1. The battery technical specifications are states, including size and efficiency. A random selection of day-ahead and imbalance prices are ampled from a Gaussian distribution.

2. The variables of the problem are stated, these include binary decision variables and the amounts by which the battery should charge or discharge in the balancing and day ahead markets.

3. The constraints are stated and added to the model as well as the objective function, profit maximisation.

4. The Gurobi solver is used to solve the resulting MILP.

5. The results are transferred to a dataframe and saved.
