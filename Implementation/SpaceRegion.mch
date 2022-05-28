/* SpaceRegion
 * Author: Chamika
 * Creation date: 11/21/2021
 */
MACHINE
    SpaceRegion

CONSTANTS
    SpaceAxis_X,
    SpaceAxis_Y,
    SpaceXY,
    Asteroids,
    EmptySpaceXY,
    HomebaseSquare,
    StarbaseSquare
    
PROPERTIES
    // Width and hight of the SpaceRegion
    SpaceAxis_X <: NATURAL1 & SpaceAxis_X = 1..12 &
    SpaceAxis_Y <: NATURAL1 & SpaceAxis_Y = 1..7 &
     
    // Relationship of the SpaceRegion with axis
    SpaceXY : SpaceAxis_X <-> SpaceAxis_Y &
    SpaceXY = SpaceAxis_X * SpaceAxis_Y &

    // Subset of asteroids of SpaceRegion
    Asteroids <: SpaceXY &
    Asteroids = {(3 |-> 2), (3 |-> 5), (5 |-> 4), (6 |-> 7), (7 |-> 1), (7 |-> 5), (7 |-> 7), (8 |-> 3), (10 |-> 6), (11 |-> 2), (12 |-> 5)} &

    // Empty space that spaceship can move without asteroid collision
    EmptySpaceXY = SpaceXY - Asteroids &
    EmptySpaceXY /\ Asteroids = {} & EmptySpaceXY \/ Asteroids = SpaceXY &
 
    // Relationship with empty space and their definitions 
    HomebaseSquare : EmptySpaceXY & HomebaseSquare = (1 |-> 1) &
    StarbaseSquare : EmptySpaceXY & StarbaseSquare = (6 |-> 4)

END
