#set page(margin: 1.5cm)
#set text(font: "Linux Libertine", size: 11pt)
#set par(justify: true)

#align(center)[
  #text(size: 18pt, weight: "bold")[Newton-Raphson Method]
  #v(0.3em)
]

#v(0.8em)

= Introduction

The Newton-Raphson method, also known as Newton's Method named after Isaac Newton and Joseph Raphson, is a root-finding algorithm that produces successively better approximations to the roots of a real-valued function. Starting with an initial guess $x_0$, the method iteratively refines the approximation using:

$ x_(n+1) = x_n - (f(x_n))/(f'(x_n)) $

= Geometric Interpretation

The method approximates the function with its tangent line at the current guess. The next approximation is where this tangent line crosses the x-axis. Geometrically, $(x_(n+1), 0)$ is the x-intercept of the tangent to the graph of $f$ at $(x_n, f(x_n))$. The improved guess is the unique root of the linear approximation of $f$ at the initial point.

= Convergence Properties

When the derivative at the root is nonzero and smoothness conditions are met, the method exhibits *quadratic convergence*: the number of correct digits approximately doubles with each iteration. The error satisfies:

$ |epsilon_(n+1)| = (|f''(xi_n)|)/(2|f'(x_n)|) dot epsilon_n^2 $

where $epsilon_n = x_n - alpha$ and $alpha$ is the true root.

= Computing Square Roots

To compute $sqrt(a)$, solve $f(x) = x^2 - a = 0$. The iteration becomes:

$ x_(n+1) = 1/2(x_n + a/x_n) $

This formula coincides with the ancient Babylonian method. For computing square roots, convergence is guaranteed for any positive initial guess, typically requiring 4-6 iterations.

= Historical Development

The method traces back to Babylonian mathematics (1900-1600 BCE) for square roots. Jamshīd al-Kāshī used equivalent methods in 1427. Isaac Newton developed the general approach in 1669, applying it to polynomials. Joseph Raphson simplified the description in 1690. Thomas Simpson gave the modern iterative formulation for general nonlinear equations in 1740.

= Example: Computing $sqrt(612)$

Starting with $x_0 = 10$:

#align(center)[
#table(
  columns: 3,
  align: center,
  [*Iteration*], [*$x_n$*], [*$f(x_n)$*],
  [0], [10], [-512],
  [1], [35.6], [655.36],
  [2], [26.396], [84.722],
  [3], [24.791], [2.576],
  [4], [24.739], [$2.7 times 10^(-3)$],
)
]

The correct value is approximately 24.7386. Notice how the number of correct digits roughly doubles with each iteration, demonstrating quadratic convergence.

= Newton Fractals

When Newton's method is applied to complex functions, fascinating fractal patterns emerge. Each root has a basin of attraction—the set of all starting points that converge to that particular root. The boundaries between these basins often form intricate fractal structures called Newton fractals, where slight changes in the initial guess can lead to convergence to completely different roots or even divergence.

= Failure Cases

*Oscillation:* For $f(x) = x^3 - 2x + 2$, certain starting points cause endless oscillation between 0 and 1.

*Divergence:* For $f(x) = x^(1\/3)$, the iteration $x_(n+1) = -2x_n$ diverges from any nonzero starting point.

*Undefined:* If $f'(x_n) = 0$, the method cannot continue as division by zero occurs.

= Further Resources

- #link("https://en.wikipedia.org/wiki/Newton%27s_method")[Wikipedia: Newton's method] – Comprehensive mathematical treatment

- #link("https://www.youtube.com/watch?v=-RdOwhmqP5s")[3Blue1Brown: Newton's Fractal] – Visual exploration and intuitive explanation