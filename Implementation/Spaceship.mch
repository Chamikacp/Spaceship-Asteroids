/* Spaceship
 * Author: Chamika
 * Creation date: 11/21/2021
 */
MACHINE
    Spaceship

SEES
    SpaceRegion
    
SETS
    // Movement types of spaceship
    MOVEMENT_TYPE = {MOVE_UP, MOVE_DOWN, MOVE_FORWARD, MOVE_BACKWARD, WARP_DRIVE};
    
    // Appropriate report messages
    REPORT_MESSAGE = {SUCCESSFULLY_MOVED_UP,SUCCESSFULLY_MOVED_DOWN, SUCCESSFULLY_MOVED_FORWARD, SUCCESSFULLY_MOVED_BACKWARD, SUCCESSFULLY_WARPED,
                      CANNOT_MOVE_UP_DUE_TO_SPACE_BOUNDRY, CANNOT_MOVE_DOWN_DUE_TO_SPACE_BOUNDRY, CANNOT_MOVE_FORWARD_DUE_TO_SPACE_BOUNDRY, CANNOT_MOVE_BACKWARD_DUE_TO_SPACE_BOUNDRY, 
                      CANNOT_WARP_DUE_TO_SPACE_BOUNDRY, ASTEROID_COLLISION, INSUFFICIENT_POWER, 
                      CANNOT_WARP_INTO_ASTEROID, CANNOT_WARP_TO_THE_SAME_POSITION, CANNOT_IMMEDIATELY_WARP_INTO_STARBASE};
    
    // Spaceship docked status
    DOCKED_STATUS = {DOCKED_AT_STARBASE, NOT_DOCKED_AT_STARBASE};

    // Game status messages
    GAME_STATUS = {GAME_WON, GAME_LOST, GAME_NOT_OVER}
    
CONSTANTS
    InitialPower,                 // Initial power for spaceship
    PowerForNormalMove,           // Power usage for a normal move
    PowerForWarpDrive,            // Power usage for a warp drive
    PowerLossForAsteroidCollision // Power loss for asteroid collision
    
PROPERTIES
    InitialPower = 100 &
    PowerForNormalMove = 5 &
    PowerForWarpDrive = 20 &
    PowerLossForAsteroidCollision = 10
    
    
DEFINITIONS
    // Main functions
    checkWithinSpaceRegion(xCordinate, yCordinate) == (xCordinate |-> yCordinate : SpaceXY);
    checkAsteroidCollision(xCordinate, yCordinate) == (xCordinate |-> yCordinate : Asteroids);
    checkPower(currentPower, reducingPower) == (currentPower >= reducingPower);
    isDocked == (xPosition |-> yPosition = StarbaseSquare);
    isGameFinished == isDocked or (power < PowerForNormalMove);

    // Animation functions
    ANIMATION_IMG0 == "images/EmptySquare.gif";
    ANIMATION_IMG1 == "images/Asteroids.gif";
    ANIMATION_IMG2 == "images/Spaceship.gif";
    ANIMATION_IMG3 == "images/Starbase.gif";
    ANIMATION_FUNCTION_DEFAULT == ( { row, column, img | row:1..max( SpaceAxis_Y ) & column:1..max( SpaceAxis_X ) & ( column, 8 - row ) : EmptySpaceXY & img = 0 } );
    ANIMATION_FUNCTION1 == ( { row, column, img | row:1..max( SpaceAxis_Y ) & column:1..max( SpaceAxis_X ) & ( column, 8 - row ) : Asteroids & img = 1 } );
    ANIMATION_FUNCTION2 == ( { row, column, img | row:1..max( SpaceAxis_Y ) & column:1..max( SpaceAxis_X ) & column = xPosition & row = 8 - yPosition & img = 2 } );
    ANIMATION_FUNCTION3 == ( { row, column, img | row:1..max( SpaceAxis_Y ) & column:1..max( SpaceAxis_X ) & column = prj1(SpaceAxis_X, SpaceAxis_Y)(StarbaseSquare) & row = prj2(SpaceAxis_X, SpaceAxis_Y)(StarbaseSquare) & img = 3 } )
       
VARIABLES
    xPosition,         // To store current x coordinate
    yPosition,         // To store current y coordinate
    power,             // To store current spaceships power
    movements,         // To store all the movements done by spaceship
    missionRoute,      // To store spaceships route coordinates
    numberOfCollisions // To store the collisions spaceship had
    
INVARIANT
    xPosition : SpaceAxis_X & yPosition : SpaceAxis_Y &
    xPosition |-> yPosition : EmptySpaceXY &
    power : INTEGER &                                                   
    movements : seq(MOVEMENT_TYPE) & missionRoute : seq(EmptySpaceXY) &
    numberOfCollisions : INTEGER
    
INITIALISATION
    xPosition := prj1(SpaceAxis_X, SpaceAxis_Y)(HomebaseSquare) ||
    yPosition := prj2(SpaceAxis_X, SpaceAxis_Y)(HomebaseSquare) ||
    power := InitialPower ||
    movements := [] || missionRoute := [HomebaseSquare] ||
    numberOfCollisions := 0
    
OPERATIONS
    // To reset the game
    NewGame =
    PRE
        isGameFinished
    THEN
        power := InitialPower ||
        numberOfCollisions := 0 ||
        xPosition := prj1(SpaceAxis_X, SpaceAxis_Y)(HomebaseSquare) || yPosition := prj2(SpaceAxis_X, SpaceAxis_Y)(HomebaseSquare) ||
        missionRoute := [HomebaseSquare] || movements := []
    END;

    // Moves Up Operation
    reportMessage <-- MoveUp =
    PRE
        reportMessage : REPORT_MESSAGE & not(isGameFinished)
    THEN
        IF
            checkPower(power, PowerForNormalMove)                                                // Check the spaceship power is enough to do a normal move
        THEN 
            IF
                checkWithinSpaceRegion(xPosition, yPosition + 1)                                 // Check the movement is within space region
            THEN
                IF 
                    checkAsteroidCollision(xPosition, yPosition + 1)                             // Check if there is asteroid collision
                THEN
                    IF
                        checkPower(power, PowerForNormalMove + PowerLossForAsteroidCollision)    // Check the spaceship power is enough to do a normal move with a asteroid collision
                    THEN
                        power := power - PowerForNormalMove - PowerLossForAsteroidCollision ||  
                        numberOfCollisions := numberOfCollisions + 1 ||
                        movements := movements <- MOVE_UP || reportMessage := ASTEROID_COLLISION 
                    ELSE
                        reportMessage := INSUFFICIENT_POWER
                    END
                ELSE
                    power := power - PowerForNormalMove ||
                    yPosition := yPosition + 1 ||
                    missionRoute := missionRoute <- (xPosition |-> yPosition + 1) || 
                    movements := movements <- MOVE_UP || reportMessage := SUCCESSFULLY_MOVED_UP
                END
            ELSE
                reportMessage := CANNOT_MOVE_UP_DUE_TO_SPACE_BOUNDRY
            END
        ELSE
            reportMessage := INSUFFICIENT_POWER
        END
    END;
    
    // Moves Down Operation
    reportMessage <-- MoveDown =
    PRE
        reportMessage : REPORT_MESSAGE & not(isGameFinished)
    THEN
        IF
            checkPower(power, PowerForNormalMove)                                                 // Check the spaceship power is enough to do a normal move
        THEN
            IF
                checkWithinSpaceRegion(xPosition, yPosition - 1)                                  // Check the movement is within space region
            THEN
                IF 
                    checkAsteroidCollision(xPosition, yPosition - 1)                              // Check if there is asteroid collision
                THEN
                    IF
                        checkPower(power, PowerForNormalMove + PowerLossForAsteroidCollision)     // Check the spaceship power is enough to do a normal move with a asteroid collision
                    THEN
                        power := power - PowerForNormalMove - PowerLossForAsteroidCollision ||
                        numberOfCollisions := numberOfCollisions + 1 ||
                        movements := movements <- MOVE_DOWN || reportMessage := ASTEROID_COLLISION
                    ELSE
                        reportMessage := INSUFFICIENT_POWER
                    END
                ELSE
                    power := power - PowerForNormalMove ||
                    yPosition := yPosition - 1 ||
                    missionRoute := missionRoute <- (xPosition |-> yPosition - 1) ||
                    movements := movements <- MOVE_DOWN || reportMessage := SUCCESSFULLY_MOVED_DOWN
                END
            ELSE
                reportMessage := CANNOT_MOVE_DOWN_DUE_TO_SPACE_BOUNDRY
            END
        ELSE
            reportMessage := INSUFFICIENT_POWER
        END   
    END;
    
    // Moves Forward Operation
    reportMessage <-- MoveForward =
    PRE
        reportMessage : REPORT_MESSAGE & not(isGameFinished)
    THEN
        IF
            checkPower(power, PowerForNormalMove)                                                     // Check the spaceship power is enough to do a normal move
        THEN
            IF
                checkWithinSpaceRegion(xPosition + 1, yPosition)                                      // Check the movement is within space region
            THEN
                IF 
                    checkAsteroidCollision(xPosition + 1, yPosition)                                  // Check if there is asteroid collision
                THEN
                    IF
                        checkPower(power, PowerForNormalMove + PowerLossForAsteroidCollision)         // Check the spaceship power is enough to do a normal move with a asteroid collision
                    THEN
                        power := power - PowerForNormalMove - PowerLossForAsteroidCollision ||
                        numberOfCollisions := numberOfCollisions + 1 ||
                        movements := movements <- MOVE_FORWARD || reportMessage := ASTEROID_COLLISION
                    ELSE
                        reportMessage := INSUFFICIENT_POWER
                    END
                ELSE
                    power := power - PowerForNormalMove ||
                    xPosition := xPosition + 1 ||
                    missionRoute := missionRoute <- (xPosition + 1 |-> yPosition) ||
                    movements := movements <- MOVE_FORWARD || reportMessage := SUCCESSFULLY_MOVED_FORWARD
                END
            ELSE
                reportMessage := CANNOT_MOVE_FORWARD_DUE_TO_SPACE_BOUNDRY
            END
        ELSE
            reportMessage := INSUFFICIENT_POWER
        END   
    END;
    
    // Moves Backward Operation
    reportMessage <-- MoveBackward =
    PRE
        reportMessage : REPORT_MESSAGE & not(isGameFinished)
    THEN
        IF
            checkPower(power, PowerForNormalMove)                                                      // Check the spaceship power is enough to do a normal move
        THEN
            IF
                checkWithinSpaceRegion(xPosition - 1, yPosition)                                       // Check the movement is within space region
            THEN
                IF 
                    checkAsteroidCollision(xPosition - 1, yPosition)                                   // Check if there is asteroid collision
                THEN
                    IF
                        checkPower(power, PowerForNormalMove + PowerLossForAsteroidCollision)          // Check the spaceship power is enough to do a normal move with a asteroid collision
                    THEN
                        power := power - PowerForNormalMove - PowerLossForAsteroidCollision ||
                        numberOfCollisions := numberOfCollisions + 1 ||
                        movements := movements <- MOVE_BACKWARD || reportMessage := ASTEROID_COLLISION
                    ELSE
                        reportMessage := INSUFFICIENT_POWER
                    END
                ELSE
                    power := power - PowerForNormalMove ||
                    xPosition := xPosition - 1 ||
                    missionRoute := missionRoute <- (xPosition - 1 |-> yPosition) ||
                    movements := movements <- MOVE_BACKWARD || reportMessage := SUCCESSFULLY_MOVED_BACKWARD
                END
            ELSE
                reportMessage := CANNOT_MOVE_BACKWARD_DUE_TO_SPACE_BOUNDRY
            END
        ELSE
            reportMessage := INSUFFICIENT_POWER
        END   
    END;
    
    // Warp-Drive Operation
    reportMessage <-- EngageWarpDrive(newXPosition, newYPosition) =
    PRE
        reportMessage : REPORT_MESSAGE &
        newXPosition : NAT1 & newYPosition : NAT1 &
        not(isGameFinished)
    THEN
        IF
            checkPower(power, PowerForWarpDrive)                                                         // Check the spaceship power is enough to do a ward drive
        THEN
            IF
                checkWithinSpaceRegion( newXPosition, newYPosition )                                     // Check the movement is within space region
            THEN
                IF
                    (newXPosition = xPosition & newYPosition = yPosition)                                // Check spaceship is warp into same location
                THEN
                    reportMessage := CANNOT_WARP_TO_THE_SAME_POSITION
                ELSE
                    IF 
                        (size(missionRoute) = 1 & newXPosition|->newYPosition = StarbaseSquare)          // Check spaceship is immediately warp into star base or not
                    THEN
                        reportMessage := CANNOT_IMMEDIATELY_WARP_INTO_STARBASE
                    ELSE
                        IF 
                            checkAsteroidCollision(newXPosition, newYPosition)                           // Check asteroid collision
                        THEN
                            reportMessage := CANNOT_WARP_INTO_ASTEROID 
                        ELSE
                            power := power - PowerForWarpDrive ||
                            xPosition := newXPosition || yPosition := newYPosition ||
                            missionRoute := missionRoute <- (newXPosition |-> newYPosition) ||
                            movements := movements <- WARP_DRIVE || reportMessage := SUCCESSFULLY_WARPED
                        END
                    END
                END
            ELSE
                reportMessage := CANNOT_WARP_DUE_TO_SPACE_BOUNDRY
            END
        ELSE
            reportMessage := INSUFFICIENT_POWER
        END        
    END;
    
    // To get spaceship's mission status
    currentLocation, currentPower, asteroidCollisions <-- MissionStatus =
    BEGIN
        currentLocation := xPosition |-> yPosition ||
        currentPower := power ||
        asteroidCollisions := numberOfCollisions
    END;
    
    // To get spaceship's mission route
    route <-- RegionsVisited =
    BEGIN
        route := missionRoute
    END;

    // To get spaceship's all movements
    allMovements <-- AllMissionMovementsConsumedPower =
    BEGIN
        allMovements := movements
    END;
    
    // To get spaceship's dock status
    dockedStatus <-- DockedAtStarbase =
    PRE
        dockedStatus : DOCKED_STATUS
    THEN
        IF
            (isDocked)
        THEN
            dockedStatus := DOCKED_AT_STARBASE
        ELSE
            dockedStatus := NOT_DOCKED_AT_STARBASE
        END
    END;
    
    // To report game status
    status <-- GameStatus =
    PRE
        status : GAME_STATUS
    THEN
        IF
            (isDocked)
        THEN
            status := GAME_WON
        ELSE
            IF
                (power < PowerForNormalMove)
            THEN
                status := GAME_LOST
            ELSE
                status := GAME_NOT_OVER
            END
        END
    END
    
END

