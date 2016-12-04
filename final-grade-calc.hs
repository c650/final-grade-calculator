import System.IO
import Text.Printf

calcNeededTestScore curGr pct goal =
	(goal - (curGr * (100-pct)/100)) * 100 / pct

getDouble :: IO Double
getDouble = readLn

main = do
	putStrLn "What is your current grade?"
	currGrade <- getDouble
	putStrLn "What percent is the final worth?"
	percent <- getDouble
	putStrLn "What grade do you want to have?"
	goalG <- getDouble
	putStrLn $ "You need a " ++ (printf "%.2f" (calcNeededTestScore currGrade percent goalG))

