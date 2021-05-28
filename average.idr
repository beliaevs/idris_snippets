average: String -> Double
average str =   let   
    numWords = wordCount str 
    totalLength = sum (allLength (words str)) in
        cast totalLength / cast numWords
        where
            wordCount : String -> Nat
            wordCount str = length (words str)
            
            allLength : List String -> List Nat
            allLength strs = map length strs

