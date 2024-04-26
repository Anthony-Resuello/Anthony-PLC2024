import System.Exit (exitSuccess)

ask :: String -> Int -> IO ()
ask prompt numExclamations =
  do
  putStrLn (prompt ++ replicate numExclamations '!')
  line <- getLine
  if line == "quit"
    then putStrLn "quitting.." >> exitSuccess 
    else if null line
           then ask prompt (numExclamations + 1)
           else ask prompt 0

main :: IO ()
main =
  do
  let prompt = "please say something"
  ask prompt 0
