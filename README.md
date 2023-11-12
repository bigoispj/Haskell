<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Integral Calculation in Haskell</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            line-height: 1.6;
            margin: 30px;
        }

        h1, h2 {
            color: #333;
        }

        code {
            background-color: #f4f4f4;
            padding: 2px 4px;
            color: #333;
            font-family: 'Courier New', Courier, monospace;
        }
    </style>
</head>
<body>

<h1>Integral Calculation in Haskell</h1>

<p>This Haskell program calculates the integral for the given region in the xy-plane and new coordinates u = xy, v = y/x. The integral involves computing the polar moment of inertia for the function \(f(x, y) = x^2 + y^2\).</p>

<h2>How to Use</h2>

<ol>
    <li>Make sure you have Haskell installed on your machine.</li>
    <li>Install the necessary libraries by running:</li>
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

<p>The program defines functions for the original function \(f(x, y)\), the new functions \(u = xy\) and \(v = y/x\), computes the Jacobian, and calculates the determinant of the Jacobian. It then defines the function to be integrated and performs the double integration over the specified region in the uv-plane.</p>

<p>The result of the integral is displayed in the console.</p>

<h2>Contributing</h2>

<p>Feel free to contribute to the improvement of this Haskell program. If you encounter any issues or have suggestions, please create an issue or pull request.</p>

<h2>License</h2>

<p>This project is licensed under the MIT License - see the <a href="LICENSE">LICENSE</a> file for details.</p>

</body>
</html>
