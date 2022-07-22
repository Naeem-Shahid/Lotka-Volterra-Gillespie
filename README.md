# Lotka Volterra model using Gillespie algorithm

***

$$
\begin{eqnarray}
resources + prey &\xrightarrow{\omega_0}& 2 \times prey \\
prey + predator &\xrightarrow{\omega_1 = k_1 n_1/A}& 2 \times predator \\
predator &\xrightarrow{\omega_2}& died
\end{eqnarray}
$$

Here, $\omega_1$ depends on the density of the prey in an area $A$ with some constant of proprtionality $k_1$.

![lotka](https://user-images.githubusercontent.com/100057270/180581094-25337ceb-2c05-4a04-9982-62242b98b8af.png)

***
