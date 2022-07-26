countFunc:: Int->Int->Int->IO()
countFunc n count amount 
    | amount > 2160 = do 
        print(count-1)
    | amount == 2160 = do
        print(count)
    | n == 0 = do 
        print(count)
    | amount < 2160 = do
        s <- readLn
        countFunc (n-1) (count+1) (amount+s)

main = do 
    n <- readLn
    countFunc n 0 0


