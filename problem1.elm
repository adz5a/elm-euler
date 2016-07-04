import Element exposing (show, toHtml)
import List exposing (filter, sum)

upperLimit = 1000
numbers = [ 1 .. upperLimit ]

isMultipleOf n x = x % n == 0

isMultipleOf5 = isMultipleOf 5
isMultipleOf3 = isMultipleOf 3

multiples = filter (\ n -> (isMultipleOf5 n) || (isMultipleOf3 n) ) numbers
multipleSum = sum multiples

main =
    toHtml <| show {
        sum = toString multipleSum,
        multiples = toString multiples
    }
