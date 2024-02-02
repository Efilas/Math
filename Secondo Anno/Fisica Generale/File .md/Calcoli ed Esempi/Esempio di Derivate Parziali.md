Sia $f(x_1,x_2)=x_1^3x_2 + x_2^4$. Calcoliamo le derivate parziali sia secondo $x_1$ sia secondo $x_2$
$$
\begin{align*}
\frac{∂f(\overrightarrow x)}{∂x_1} 
&= \lim_{\Delta \rightarrow 0}\frac{f(x_1+\Delta,x_2)-f(x_1,x_2)}{\Delta} \\ 
&= \lim_{\Delta\rightarrow 0}\frac{(x_1+\Delta)^3x_2+x_2^4- (x_1^3x_2+x_2^4)}{\Delta}\\
&= \lim_{\Delta \rightarrow 0}\frac{(x_1^3+3x_1^2\Delta\; +\; ...)x_2+x_2^4-x_1^3x_2-x_2^4}{\Delta} = 3x_1^2x_2 
\end{align*}
$$

In maniera del tutto analoga si ha che $\displaystyle{\frac{∂f(x_1,x_2)}{∂x_2}=\lim_{\Delta \rightarrow 0}\frac{x_1^3(x_2+\Delta) + (x_2+\Delta)^4-(x_1^3x_2+x_2^4)}{\Delta}=x_1^3+4x_2^3}$