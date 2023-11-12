<!DOCTYPE html>
<html lang="en">
<body>
<h1>Haskell Polar Moment of Inertia Calculator</h1>

<p>This Haskell program calculates the polar moment of inertia for a specified region in the xy-plane. It involves a change of coordinates to u = xy, v = y/x and the evaluation of a double integral for the function \(f(x, y) = x^2 + y^2\).</p>

<h2>How to Use</h2>

<ol>
    <li>Make sure you have Haskell installed on your machine. You can download it from <a href="https://www.haskell.org/platform/" target="_blank">Haskell Platform</a>.</li>
    <li>Install the necessary library by running:</li>
</ol>

<code>
    cabal install ad
</code>

<ol start="3">
    <li>Run the Haskell program:</li>
</ol>

<code>
    ghc your_filename.hs<br>
    ./your_filename
</code>

<h2>Explanation</h2>

<p>The program uses the <a href="https://hackage.haskell.org/package/ad" target="_blank">Numeric.AD</a> library for automatic differentiation to calculate derivatives. It defines functions for the original function \(f(x, y)\), the new functions \(u = xy\) and \(v = y/x\), computes the Jacobian, and calculates the determinant of the Jacobian. It then defines the function to be integrated and performs the double integration over the specified region in the uv-plane.</p>

<p>The result of the integral is displayed in the console.</p>

<h2>Contributing</h2>

<p>Feel free to contribute to the improvement of this Haskell program. If you encounter any issues or have suggestions, please create an issue or pull request on the <a href="https://github.com/your_username/your_repository" target="_blank">GitHub repository</a>.</p>

<h2>License</h2>

<p>This project is licensed under the MIT License - see the <a href="LICENSE" target="_blank">LICENSE</a> file for details.</p>

<h2>Acknowledgements</h2>

<p>This program is inspired by the need to solve specific mathematical problems and utilizes the power of Haskell's functional programming paradigm.</p>

</body>
</html>
