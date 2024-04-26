-- Creating a Function 
func x y = x + y 

-- Creating a Function to print string 
func2 = "Light Yagami"


-- Create function using guards 
func3 x | x < 0 = putStrLn("x is less than 0")
        | x > 0 = putStrLn("x is greater than 0")
        | otherwise = putStrLn("Enter a number")

-- Ceate a List 

func4 = [1 .. 5]








-- Main to run programs 
main = do
    let result = func 5 2
    print result
    print func2
    func3 5
    print func4