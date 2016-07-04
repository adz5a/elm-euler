{--
    Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
    How many such routes are there through a 20×20 grid?
--}
import Element exposing (..)



type Direction
    = Right
    | Bottom

type alias Position = (Int, Int)
type alias Path = List Position

move : Direction -> Position -> Position
move direction (x, y) =
    case direction of
        Right -> (x, y + 1)
        Bottom -> (x + 1, y)


{--

    (Int, Int) Size of the matrix
    Position : Current Position
    Path
--}

if x < xMax and y < yMax
    paths ++ latticePath


countPath : (Int, Int) -> Int
countPath = (xMax, yMax)
    let position = (0 , 0)
        size = (xMax, yMax)
    in
        length <| latticePath size [position]







main =
    toHtml <| show <| move Bottom (0,0)
