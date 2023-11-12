import Numeric.AD (auto, diff)

-- Definindo a função original em termos de x e y
originalFunction :: Floating a => a -> a -> a
originalFunction x y = x^2 + y^2

-- Definindo a função u = xy
uFunction :: Floating a => a -> a -> a
uFunction x y = x * y

-- Definindo a função v = y/x
vFunction :: Floating a => a -> a -> a
vFunction x y = y / x

-- Calculando o Jacobiano
jacobian :: Floating a => a -> a -> [[a]]
jacobian x y = [[diff (\x' -> uFunction x' y) x, diff (\y' -> uFunction x y') y],
                [diff (\x' -> vFunction x' y) x, diff (\y' -> vFunction x y') y]]

-- Calculando o determinante do Jacobiano
jacobianDeterminant :: Floating a => a -> a -> a
jacobianDeterminant x y = det
  where
    [[a, b], [c, d]] = jacobian x y
    det = a * d - b * c

-- Função something(u, v) em termos de u e v
something :: Floating a => a -> a -> a
something u v = originalFunction (sqrt u / sqrt v) (sqrt u * sqrt v)

-- Integral
mainIntegral :: Floating a => a -> a -> a
mainIntegral uMax vMax = integral
  where
    integral = integrate (\u -> integrate (\v -> something u v) (u / 4) u) 0 uMax
    integrate f a b = (b - a) / 2 * (f a + f b)

main :: IO ()
main = do
  let uMax = 1
      vMax = 1
  putStrLn $ "Resultado da integral: " ++ show (mainIntegral uMax vMax)
