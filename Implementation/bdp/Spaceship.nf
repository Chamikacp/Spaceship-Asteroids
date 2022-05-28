Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Spaceship))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Spaceship))==(Machine(Spaceship));
  Level(Machine(Spaceship))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Spaceship)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Spaceship))==(SpaceRegion)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Spaceship))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Spaceship))==(?);
  List_Includes(Machine(Spaceship))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Spaceship))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Spaceship))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Spaceship))==(?);
  Context_List_Variables(Machine(Spaceship))==(?);
  Abstract_List_Variables(Machine(Spaceship))==(?);
  Local_List_Variables(Machine(Spaceship))==(numberOfCollisions,missionRoute,movements,power,yPosition,xPosition);
  List_Variables(Machine(Spaceship))==(numberOfCollisions,missionRoute,movements,power,yPosition,xPosition);
  External_List_Variables(Machine(Spaceship))==(numberOfCollisions,missionRoute,movements,power,yPosition,xPosition)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Spaceship))==(?);
  Abstract_List_VisibleVariables(Machine(Spaceship))==(?);
  External_List_VisibleVariables(Machine(Spaceship))==(?);
  Expanded_List_VisibleVariables(Machine(Spaceship))==(?);
  List_VisibleVariables(Machine(Spaceship))==(?);
  Internal_List_VisibleVariables(Machine(Spaceship))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Spaceship))==(btrue);
  Gluing_List_Invariant(Machine(Spaceship))==(btrue);
  Expanded_List_Invariant(Machine(Spaceship))==(btrue);
  Abstract_List_Invariant(Machine(Spaceship))==(btrue);
  Context_List_Invariant(Machine(Spaceship))==(btrue);
  List_Invariant(Machine(Spaceship))==(xPosition: SpaceAxis_X & yPosition: SpaceAxis_Y & xPosition|->yPosition: EmptySpaceXY & power: INTEGER & movements: seq(MOVEMENT_TYPE) & missionRoute: seq(EmptySpaceXY) & numberOfCollisions: INTEGER)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Spaceship))==(btrue);
  Abstract_List_Assertions(Machine(Spaceship))==(btrue);
  Context_List_Assertions(Machine(Spaceship))==(btrue);
  List_Assertions(Machine(Spaceship))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Spaceship))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Spaceship))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Spaceship))==(xPosition,yPosition,power,movements,missionRoute,numberOfCollisions:=prj1(SpaceAxis_X,SpaceAxis_Y)(HomebaseSquare),prj2(SpaceAxis_X,SpaceAxis_Y)(HomebaseSquare),InitialPower,<>,[HomebaseSquare],0);
  Context_List_Initialisation(Machine(Spaceship))==(skip);
  List_Initialisation(Machine(Spaceship))==(xPosition:=prj1(SpaceAxis_X,SpaceAxis_Y)(HomebaseSquare) || yPosition:=prj2(SpaceAxis_X,SpaceAxis_Y)(HomebaseSquare) || power:=InitialPower || movements:=<> || missionRoute:=[HomebaseSquare] || numberOfCollisions:=0)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Spaceship))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Spaceship),Machine(SpaceRegion))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Spaceship))==(btrue);
  List_Constraints(Machine(Spaceship))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Spaceship))==(NewGame,MoveUp,MoveDown,MoveForward,MoveBackward,EngageWarpDrive,MissionStatus,RegionsVisited,AllMissionMovementsConsumedPower,DockedAtStarbase,GameStatus);
  List_Operations(Machine(Spaceship))==(NewGame,MoveUp,MoveDown,MoveForward,MoveBackward,EngageWarpDrive,MissionStatus,RegionsVisited,AllMissionMovementsConsumedPower,DockedAtStarbase,GameStatus)
END
&
THEORY ListInputX IS
  List_Input(Machine(Spaceship),NewGame)==(?);
  List_Input(Machine(Spaceship),MoveUp)==(?);
  List_Input(Machine(Spaceship),MoveDown)==(?);
  List_Input(Machine(Spaceship),MoveForward)==(?);
  List_Input(Machine(Spaceship),MoveBackward)==(?);
  List_Input(Machine(Spaceship),EngageWarpDrive)==(newXPosition,newYPosition);
  List_Input(Machine(Spaceship),MissionStatus)==(?);
  List_Input(Machine(Spaceship),RegionsVisited)==(?);
  List_Input(Machine(Spaceship),AllMissionMovementsConsumedPower)==(?);
  List_Input(Machine(Spaceship),DockedAtStarbase)==(?);
  List_Input(Machine(Spaceship),GameStatus)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Spaceship),NewGame)==(?);
  List_Output(Machine(Spaceship),MoveUp)==(reportMessage);
  List_Output(Machine(Spaceship),MoveDown)==(reportMessage);
  List_Output(Machine(Spaceship),MoveForward)==(reportMessage);
  List_Output(Machine(Spaceship),MoveBackward)==(reportMessage);
  List_Output(Machine(Spaceship),EngageWarpDrive)==(reportMessage);
  List_Output(Machine(Spaceship),MissionStatus)==(currentLocation,currentPower,asteroidCollisions);
  List_Output(Machine(Spaceship),RegionsVisited)==(route);
  List_Output(Machine(Spaceship),AllMissionMovementsConsumedPower)==(allMovements);
  List_Output(Machine(Spaceship),DockedAtStarbase)==(dockedStatus);
  List_Output(Machine(Spaceship),GameStatus)==(status)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Spaceship),NewGame)==(NewGame);
  List_Header(Machine(Spaceship),MoveUp)==(reportMessage <-- MoveUp);
  List_Header(Machine(Spaceship),MoveDown)==(reportMessage <-- MoveDown);
  List_Header(Machine(Spaceship),MoveForward)==(reportMessage <-- MoveForward);
  List_Header(Machine(Spaceship),MoveBackward)==(reportMessage <-- MoveBackward);
  List_Header(Machine(Spaceship),EngageWarpDrive)==(reportMessage <-- EngageWarpDrive(newXPosition,newYPosition));
  List_Header(Machine(Spaceship),MissionStatus)==(currentLocation,currentPower,asteroidCollisions <-- MissionStatus);
  List_Header(Machine(Spaceship),RegionsVisited)==(route <-- RegionsVisited);
  List_Header(Machine(Spaceship),AllMissionMovementsConsumedPower)==(allMovements <-- AllMissionMovementsConsumedPower);
  List_Header(Machine(Spaceship),DockedAtStarbase)==(dockedStatus <-- DockedAtStarbase);
  List_Header(Machine(Spaceship),GameStatus)==(status <-- GameStatus)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Spaceship),NewGame)==(xPosition|->yPosition = StarbaseSquare or power<PowerForNormalMove);
  List_Precondition(Machine(Spaceship),MoveUp)==(reportMessage: REPORT_MESSAGE & not(xPosition|->yPosition = StarbaseSquare or power<PowerForNormalMove));
  List_Precondition(Machine(Spaceship),MoveDown)==(reportMessage: REPORT_MESSAGE & not(xPosition|->yPosition = StarbaseSquare or power<PowerForNormalMove));
  List_Precondition(Machine(Spaceship),MoveForward)==(reportMessage: REPORT_MESSAGE & not(xPosition|->yPosition = StarbaseSquare or power<PowerForNormalMove));
  List_Precondition(Machine(Spaceship),MoveBackward)==(reportMessage: REPORT_MESSAGE & not(xPosition|->yPosition = StarbaseSquare or power<PowerForNormalMove));
  List_Precondition(Machine(Spaceship),EngageWarpDrive)==(reportMessage: REPORT_MESSAGE & newXPosition: NAT1 & newYPosition: NAT1 & not(xPosition|->yPosition = StarbaseSquare or power<PowerForNormalMove));
  List_Precondition(Machine(Spaceship),MissionStatus)==(btrue);
  List_Precondition(Machine(Spaceship),RegionsVisited)==(btrue);
  List_Precondition(Machine(Spaceship),AllMissionMovementsConsumedPower)==(btrue);
  List_Precondition(Machine(Spaceship),DockedAtStarbase)==(dockedStatus: DOCKED_STATUS);
  List_Precondition(Machine(Spaceship),GameStatus)==(status: GAME_STATUS)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Spaceship),GameStatus)==(status: GAME_STATUS | xPosition|->yPosition = StarbaseSquare ==> status:=GAME_WON [] not(xPosition|->yPosition = StarbaseSquare) ==> (power<PowerForNormalMove ==> status:=GAME_LOST [] not(power<PowerForNormalMove) ==> status:=GAME_NOT_OVER));
  Expanded_List_Substitution(Machine(Spaceship),DockedAtStarbase)==(dockedStatus: DOCKED_STATUS | xPosition|->yPosition = StarbaseSquare ==> dockedStatus:=DOCKED_AT_STARBASE [] not(xPosition|->yPosition = StarbaseSquare) ==> dockedStatus:=NOT_DOCKED_AT_STARBASE);
  Expanded_List_Substitution(Machine(Spaceship),AllMissionMovementsConsumedPower)==(btrue | allMovements:=movements);
  Expanded_List_Substitution(Machine(Spaceship),RegionsVisited)==(btrue | route:=missionRoute);
  Expanded_List_Substitution(Machine(Spaceship),MissionStatus)==(btrue | currentLocation,currentPower,asteroidCollisions:=xPosition|->yPosition,power,numberOfCollisions);
  Expanded_List_Substitution(Machine(Spaceship),EngageWarpDrive)==(reportMessage: REPORT_MESSAGE & newXPosition: NAT1 & newYPosition: NAT1 & not(xPosition|->yPosition = StarbaseSquare or power<PowerForNormalMove) | power>=PowerForWarpDrive ==> (newXPosition|->newYPosition: SpaceXY ==> (newXPosition = xPosition & newYPosition = yPosition ==> reportMessage:=CANNOT_WARP_TO_THE_SAME_POSITION [] not(newXPosition = xPosition & newYPosition = yPosition) ==> (size(missionRoute) = 1 & newXPosition|->newYPosition = StarbaseSquare ==> reportMessage:=CANNOT_IMMEDIATELY_WARP_INTO_STARBASE [] not(size(missionRoute) = 1 & newXPosition|->newYPosition = StarbaseSquare) ==> (newXPosition|->newYPosition: Asteroids ==> reportMessage:=CANNOT_WARP_INTO_ASTEROID [] not(newXPosition|->newYPosition: Asteroids) ==> power,xPosition,yPosition,missionRoute,movements,reportMessage:=power-PowerForWarpDrive,newXPosition,newYPosition,missionRoute<-(newXPosition|->newYPosition),movements<-WARP_DRIVE,SUCCESSFULLY_WARPED))) [] not(newXPosition|->newYPosition: SpaceXY) ==> reportMessage:=CANNOT_WARP_DUE_TO_SPACE_BOUNDRY) [] not(power>=PowerForWarpDrive) ==> reportMessage:=INSUFFICIENT_POWER);
  Expanded_List_Substitution(Machine(Spaceship),MoveBackward)==(reportMessage: REPORT_MESSAGE & not(xPosition|->yPosition = StarbaseSquare or power<PowerForNormalMove) | power>=PowerForNormalMove ==> (xPosition-1|->yPosition: SpaceXY ==> (xPosition-1|->yPosition: Asteroids ==> (power>=PowerForNormalMove+PowerLossForAsteroidCollision ==> power,numberOfCollisions,movements,reportMessage:=power-PowerForNormalMove-PowerLossForAsteroidCollision,numberOfCollisions+1,movements<-MOVE_BACKWARD,ASTEROID_COLLISION [] not(power>=PowerForNormalMove+PowerLossForAsteroidCollision) ==> reportMessage:=INSUFFICIENT_POWER) [] not(xPosition-1|->yPosition: Asteroids) ==> power,xPosition,missionRoute,movements,reportMessage:=power-PowerForNormalMove,xPosition-1,missionRoute<-(xPosition-1|->yPosition),movements<-MOVE_BACKWARD,SUCCESSFULLY_MOVED_BACKWARD) [] not(xPosition-1|->yPosition: SpaceXY) ==> reportMessage:=CANNOT_MOVE_BACKWARD_DUE_TO_SPACE_BOUNDRY) [] not(power>=PowerForNormalMove) ==> reportMessage:=INSUFFICIENT_POWER);
  Expanded_List_Substitution(Machine(Spaceship),MoveForward)==(reportMessage: REPORT_MESSAGE & not(xPosition|->yPosition = StarbaseSquare or power<PowerForNormalMove) | power>=PowerForNormalMove ==> (xPosition+1|->yPosition: SpaceXY ==> (xPosition+1|->yPosition: Asteroids ==> (power>=PowerForNormalMove+PowerLossForAsteroidCollision ==> power,numberOfCollisions,movements,reportMessage:=power-PowerForNormalMove-PowerLossForAsteroidCollision,numberOfCollisions+1,movements<-MOVE_FORWARD,ASTEROID_COLLISION [] not(power>=PowerForNormalMove+PowerLossForAsteroidCollision) ==> reportMessage:=INSUFFICIENT_POWER) [] not(xPosition+1|->yPosition: Asteroids) ==> power,xPosition,missionRoute,movements,reportMessage:=power-PowerForNormalMove,xPosition+1,missionRoute<-(xPosition+1|->yPosition),movements<-MOVE_FORWARD,SUCCESSFULLY_MOVED_FORWARD) [] not(xPosition+1|->yPosition: SpaceXY) ==> reportMessage:=CANNOT_MOVE_FORWARD_DUE_TO_SPACE_BOUNDRY) [] not(power>=PowerForNormalMove) ==> reportMessage:=INSUFFICIENT_POWER);
  Expanded_List_Substitution(Machine(Spaceship),MoveDown)==(reportMessage: REPORT_MESSAGE & not(xPosition|->yPosition = StarbaseSquare or power<PowerForNormalMove) | power>=PowerForNormalMove ==> (xPosition|->yPosition-1: SpaceXY ==> (xPosition|->yPosition-1: Asteroids ==> (power>=PowerForNormalMove+PowerLossForAsteroidCollision ==> power,numberOfCollisions,movements,reportMessage:=power-PowerForNormalMove-PowerLossForAsteroidCollision,numberOfCollisions+1,movements<-MOVE_DOWN,ASTEROID_COLLISION [] not(power>=PowerForNormalMove+PowerLossForAsteroidCollision) ==> reportMessage:=INSUFFICIENT_POWER) [] not(xPosition|->yPosition-1: Asteroids) ==> power,yPosition,missionRoute,movements,reportMessage:=power-PowerForNormalMove,yPosition-1,missionRoute<-(xPosition|->yPosition-1),movements<-MOVE_DOWN,SUCCESSFULLY_MOVED_DOWN) [] not(xPosition|->yPosition-1: SpaceXY) ==> reportMessage:=CANNOT_MOVE_DOWN_DUE_TO_SPACE_BOUNDRY) [] not(power>=PowerForNormalMove) ==> reportMessage:=INSUFFICIENT_POWER);
  Expanded_List_Substitution(Machine(Spaceship),MoveUp)==(reportMessage: REPORT_MESSAGE & not(xPosition|->yPosition = StarbaseSquare or power<PowerForNormalMove) | power>=PowerForNormalMove ==> (xPosition|->yPosition+1: SpaceXY ==> (xPosition|->yPosition+1: Asteroids ==> (power>=PowerForNormalMove+PowerLossForAsteroidCollision ==> power,numberOfCollisions,movements,reportMessage:=power-PowerForNormalMove-PowerLossForAsteroidCollision,numberOfCollisions+1,movements<-MOVE_UP,ASTEROID_COLLISION [] not(power>=PowerForNormalMove+PowerLossForAsteroidCollision) ==> reportMessage:=INSUFFICIENT_POWER) [] not(xPosition|->yPosition+1: Asteroids) ==> power,yPosition,missionRoute,movements,reportMessage:=power-PowerForNormalMove,yPosition+1,missionRoute<-(xPosition|->yPosition+1),movements<-MOVE_UP,SUCCESSFULLY_MOVED_UP) [] not(xPosition|->yPosition+1: SpaceXY) ==> reportMessage:=CANNOT_MOVE_UP_DUE_TO_SPACE_BOUNDRY) [] not(power>=PowerForNormalMove) ==> reportMessage:=INSUFFICIENT_POWER);
  Expanded_List_Substitution(Machine(Spaceship),NewGame)==(xPosition|->yPosition = StarbaseSquare or power<PowerForNormalMove | power,numberOfCollisions,xPosition,yPosition,missionRoute,movements:=InitialPower,0,prj1(SpaceAxis_X,SpaceAxis_Y)(HomebaseSquare),prj2(SpaceAxis_X,SpaceAxis_Y)(HomebaseSquare),[HomebaseSquare],<>);
  List_Substitution(Machine(Spaceship),NewGame)==(power:=InitialPower || numberOfCollisions:=0 || xPosition:=prj1(SpaceAxis_X,SpaceAxis_Y)(HomebaseSquare) || yPosition:=prj2(SpaceAxis_X,SpaceAxis_Y)(HomebaseSquare) || missionRoute:=[HomebaseSquare] || movements:=<>);
  List_Substitution(Machine(Spaceship),MoveUp)==(IF power>=PowerForNormalMove THEN IF xPosition|->yPosition+1: SpaceXY THEN IF xPosition|->yPosition+1: Asteroids THEN IF power>=PowerForNormalMove+PowerLossForAsteroidCollision THEN power:=power-PowerForNormalMove-PowerLossForAsteroidCollision || numberOfCollisions:=numberOfCollisions+1 || movements:=movements<-MOVE_UP || reportMessage:=ASTEROID_COLLISION ELSE reportMessage:=INSUFFICIENT_POWER END ELSE power:=power-PowerForNormalMove || yPosition:=yPosition+1 || missionRoute:=missionRoute<-(xPosition|->yPosition+1) || movements:=movements<-MOVE_UP || reportMessage:=SUCCESSFULLY_MOVED_UP END ELSE reportMessage:=CANNOT_MOVE_UP_DUE_TO_SPACE_BOUNDRY END ELSE reportMessage:=INSUFFICIENT_POWER END);
  List_Substitution(Machine(Spaceship),MoveDown)==(IF power>=PowerForNormalMove THEN IF xPosition|->yPosition-1: SpaceXY THEN IF xPosition|->yPosition-1: Asteroids THEN IF power>=PowerForNormalMove+PowerLossForAsteroidCollision THEN power:=power-PowerForNormalMove-PowerLossForAsteroidCollision || numberOfCollisions:=numberOfCollisions+1 || movements:=movements<-MOVE_DOWN || reportMessage:=ASTEROID_COLLISION ELSE reportMessage:=INSUFFICIENT_POWER END ELSE power:=power-PowerForNormalMove || yPosition:=yPosition-1 || missionRoute:=missionRoute<-(xPosition|->yPosition-1) || movements:=movements<-MOVE_DOWN || reportMessage:=SUCCESSFULLY_MOVED_DOWN END ELSE reportMessage:=CANNOT_MOVE_DOWN_DUE_TO_SPACE_BOUNDRY END ELSE reportMessage:=INSUFFICIENT_POWER END);
  List_Substitution(Machine(Spaceship),MoveForward)==(IF power>=PowerForNormalMove THEN IF xPosition+1|->yPosition: SpaceXY THEN IF xPosition+1|->yPosition: Asteroids THEN IF power>=PowerForNormalMove+PowerLossForAsteroidCollision THEN power:=power-PowerForNormalMove-PowerLossForAsteroidCollision || numberOfCollisions:=numberOfCollisions+1 || movements:=movements<-MOVE_FORWARD || reportMessage:=ASTEROID_COLLISION ELSE reportMessage:=INSUFFICIENT_POWER END ELSE power:=power-PowerForNormalMove || xPosition:=xPosition+1 || missionRoute:=missionRoute<-(xPosition+1|->yPosition) || movements:=movements<-MOVE_FORWARD || reportMessage:=SUCCESSFULLY_MOVED_FORWARD END ELSE reportMessage:=CANNOT_MOVE_FORWARD_DUE_TO_SPACE_BOUNDRY END ELSE reportMessage:=INSUFFICIENT_POWER END);
  List_Substitution(Machine(Spaceship),MoveBackward)==(IF power>=PowerForNormalMove THEN IF xPosition-1|->yPosition: SpaceXY THEN IF xPosition-1|->yPosition: Asteroids THEN IF power>=PowerForNormalMove+PowerLossForAsteroidCollision THEN power:=power-PowerForNormalMove-PowerLossForAsteroidCollision || numberOfCollisions:=numberOfCollisions+1 || movements:=movements<-MOVE_BACKWARD || reportMessage:=ASTEROID_COLLISION ELSE reportMessage:=INSUFFICIENT_POWER END ELSE power:=power-PowerForNormalMove || xPosition:=xPosition-1 || missionRoute:=missionRoute<-(xPosition-1|->yPosition) || movements:=movements<-MOVE_BACKWARD || reportMessage:=SUCCESSFULLY_MOVED_BACKWARD END ELSE reportMessage:=CANNOT_MOVE_BACKWARD_DUE_TO_SPACE_BOUNDRY END ELSE reportMessage:=INSUFFICIENT_POWER END);
  List_Substitution(Machine(Spaceship),EngageWarpDrive)==(IF power>=PowerForWarpDrive THEN IF newXPosition|->newYPosition: SpaceXY THEN IF newXPosition = xPosition & newYPosition = yPosition THEN reportMessage:=CANNOT_WARP_TO_THE_SAME_POSITION ELSE IF size(missionRoute) = 1 & newXPosition|->newYPosition = StarbaseSquare THEN reportMessage:=CANNOT_IMMEDIATELY_WARP_INTO_STARBASE ELSE IF newXPosition|->newYPosition: Asteroids THEN reportMessage:=CANNOT_WARP_INTO_ASTEROID ELSE power:=power-PowerForWarpDrive || xPosition:=newXPosition || yPosition:=newYPosition || missionRoute:=missionRoute<-(newXPosition|->newYPosition) || movements:=movements<-WARP_DRIVE || reportMessage:=SUCCESSFULLY_WARPED END END END ELSE reportMessage:=CANNOT_WARP_DUE_TO_SPACE_BOUNDRY END ELSE reportMessage:=INSUFFICIENT_POWER END);
  List_Substitution(Machine(Spaceship),MissionStatus)==(currentLocation:=xPosition|->yPosition || currentPower:=power || asteroidCollisions:=numberOfCollisions);
  List_Substitution(Machine(Spaceship),RegionsVisited)==(route:=missionRoute);
  List_Substitution(Machine(Spaceship),AllMissionMovementsConsumedPower)==(allMovements:=movements);
  List_Substitution(Machine(Spaceship),DockedAtStarbase)==(IF xPosition|->yPosition = StarbaseSquare THEN dockedStatus:=DOCKED_AT_STARBASE ELSE dockedStatus:=NOT_DOCKED_AT_STARBASE END);
  List_Substitution(Machine(Spaceship),GameStatus)==(IF xPosition|->yPosition = StarbaseSquare THEN status:=GAME_WON ELSE IF power<PowerForNormalMove THEN status:=GAME_LOST ELSE status:=GAME_NOT_OVER END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Spaceship))==(InitialPower,PowerForNormalMove,PowerForWarpDrive,PowerLossForAsteroidCollision);
  Inherited_List_Constants(Machine(Spaceship))==(?);
  List_Constants(Machine(Spaceship))==(InitialPower,PowerForNormalMove,PowerForWarpDrive,PowerLossForAsteroidCollision)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Spaceship),MOVEMENT_TYPE)==({MOVE_UP,MOVE_DOWN,MOVE_FORWARD,MOVE_BACKWARD,WARP_DRIVE});
  Context_List_Enumerated(Machine(Spaceship))==(?);
  Context_List_Defered(Machine(Spaceship))==(?);
  Context_List_Sets(Machine(Spaceship))==(?);
  List_Valuable_Sets(Machine(Spaceship))==(?);
  Inherited_List_Enumerated(Machine(Spaceship))==(?);
  Inherited_List_Defered(Machine(Spaceship))==(?);
  Inherited_List_Sets(Machine(Spaceship))==(?);
  List_Enumerated(Machine(Spaceship))==(MOVEMENT_TYPE,REPORT_MESSAGE,DOCKED_STATUS,GAME_STATUS);
  List_Defered(Machine(Spaceship))==(?);
  List_Sets(Machine(Spaceship))==(MOVEMENT_TYPE,REPORT_MESSAGE,DOCKED_STATUS,GAME_STATUS);
  Set_Definition(Machine(Spaceship),REPORT_MESSAGE)==({SUCCESSFULLY_MOVED_UP,SUCCESSFULLY_MOVED_DOWN,SUCCESSFULLY_MOVED_FORWARD,SUCCESSFULLY_MOVED_BACKWARD,SUCCESSFULLY_WARPED,CANNOT_MOVE_UP_DUE_TO_SPACE_BOUNDRY,CANNOT_MOVE_DOWN_DUE_TO_SPACE_BOUNDRY,CANNOT_MOVE_FORWARD_DUE_TO_SPACE_BOUNDRY,CANNOT_MOVE_BACKWARD_DUE_TO_SPACE_BOUNDRY,CANNOT_WARP_DUE_TO_SPACE_BOUNDRY,ASTEROID_COLLISION,INSUFFICIENT_POWER,CANNOT_WARP_INTO_ASTEROID,CANNOT_WARP_TO_THE_SAME_POSITION,CANNOT_IMMEDIATELY_WARP_INTO_STARBASE});
  Set_Definition(Machine(Spaceship),DOCKED_STATUS)==({DOCKED_AT_STARBASE,NOT_DOCKED_AT_STARBASE});
  Set_Definition(Machine(Spaceship),GAME_STATUS)==({GAME_WON,GAME_LOST,GAME_NOT_OVER})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Spaceship))==(?);
  Expanded_List_HiddenConstants(Machine(Spaceship))==(?);
  List_HiddenConstants(Machine(Spaceship))==(?);
  External_List_HiddenConstants(Machine(Spaceship))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Spaceship))==(btrue);
  Context_List_Properties(Machine(Spaceship))==(SpaceAxis_X <: NATURAL1 & SpaceAxis_X = 1..12 & SpaceAxis_Y <: NATURAL1 & SpaceAxis_Y = 1..7 & SpaceXY: SpaceAxis_X <-> SpaceAxis_Y & SpaceXY = SpaceAxis_X*SpaceAxis_Y & Asteroids <: SpaceXY & Asteroids = {3|->2,3|->5,5|->4,6|->7,7|->1,7|->5,7|->7,8|->3,10|->6,11|->2,12|->5} & EmptySpaceXY = SpaceXY-Asteroids & EmptySpaceXY/\Asteroids = {} & EmptySpaceXY\/Asteroids = SpaceXY & HomebaseSquare: EmptySpaceXY & HomebaseSquare = 1|->1 & StarbaseSquare: EmptySpaceXY & StarbaseSquare = 6|->4);
  Inherited_List_Properties(Machine(Spaceship))==(btrue);
  List_Properties(Machine(Spaceship))==(InitialPower = 100 & PowerForNormalMove = 5 & PowerForWarpDrive = 20 & PowerLossForAsteroidCollision = 10 & MOVEMENT_TYPE: FIN(INTEGER) & not(MOVEMENT_TYPE = {}) & REPORT_MESSAGE: FIN(INTEGER) & not(REPORT_MESSAGE = {}) & DOCKED_STATUS: FIN(INTEGER) & not(DOCKED_STATUS = {}) & GAME_STATUS: FIN(INTEGER) & not(GAME_STATUS = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Spaceship),Machine(SpaceRegion))==(?);
  Seen_Context_List_Enumerated(Machine(Spaceship))==(?);
  Seen_Context_List_Invariant(Machine(Spaceship))==(btrue);
  Seen_Context_List_Assertions(Machine(Spaceship))==(btrue);
  Seen_Context_List_Properties(Machine(Spaceship))==(btrue);
  Seen_List_Constraints(Machine(Spaceship))==(btrue);
  Seen_List_Operations(Machine(Spaceship),Machine(SpaceRegion))==(?);
  Seen_Expanded_List_Invariant(Machine(Spaceship),Machine(SpaceRegion))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Spaceship),NewGame)==(?);
  List_ANY_Var(Machine(Spaceship),MoveUp)==(?);
  List_ANY_Var(Machine(Spaceship),MoveDown)==(?);
  List_ANY_Var(Machine(Spaceship),MoveForward)==(?);
  List_ANY_Var(Machine(Spaceship),MoveBackward)==(?);
  List_ANY_Var(Machine(Spaceship),EngageWarpDrive)==(?);
  List_ANY_Var(Machine(Spaceship),MissionStatus)==(?);
  List_ANY_Var(Machine(Spaceship),RegionsVisited)==(?);
  List_ANY_Var(Machine(Spaceship),AllMissionMovementsConsumedPower)==(?);
  List_ANY_Var(Machine(Spaceship),DockedAtStarbase)==(?);
  List_ANY_Var(Machine(Spaceship),GameStatus)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Spaceship)) == (InitialPower,PowerForNormalMove,PowerForWarpDrive,PowerLossForAsteroidCollision,MOVEMENT_TYPE,REPORT_MESSAGE,DOCKED_STATUS,GAME_STATUS,MOVE_UP,MOVE_DOWN,MOVE_FORWARD,MOVE_BACKWARD,WARP_DRIVE,SUCCESSFULLY_MOVED_UP,SUCCESSFULLY_MOVED_DOWN,SUCCESSFULLY_MOVED_FORWARD,SUCCESSFULLY_MOVED_BACKWARD,SUCCESSFULLY_WARPED,CANNOT_MOVE_UP_DUE_TO_SPACE_BOUNDRY,CANNOT_MOVE_DOWN_DUE_TO_SPACE_BOUNDRY,CANNOT_MOVE_FORWARD_DUE_TO_SPACE_BOUNDRY,CANNOT_MOVE_BACKWARD_DUE_TO_SPACE_BOUNDRY,CANNOT_WARP_DUE_TO_SPACE_BOUNDRY,ASTEROID_COLLISION,INSUFFICIENT_POWER,CANNOT_WARP_INTO_ASTEROID,CANNOT_WARP_TO_THE_SAME_POSITION,CANNOT_IMMEDIATELY_WARP_INTO_STARBASE,DOCKED_AT_STARBASE,NOT_DOCKED_AT_STARBASE,GAME_WON,GAME_LOST,GAME_NOT_OVER | ? | numberOfCollisions,missionRoute,movements,power,yPosition,xPosition | ? | NewGame,MoveUp,MoveDown,MoveForward,MoveBackward,EngageWarpDrive,MissionStatus,RegionsVisited,AllMissionMovementsConsumedPower,DockedAtStarbase,GameStatus | ? | seen(Machine(SpaceRegion)) | ? | Spaceship);
  List_Of_HiddenCst_Ids(Machine(Spaceship)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Spaceship)) == (InitialPower,PowerForNormalMove,PowerForWarpDrive,PowerLossForAsteroidCollision);
  List_Of_VisibleVar_Ids(Machine(Spaceship)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Spaceship)) == (?: ?);
  List_Of_Ids(Machine(SpaceRegion)) == (SpaceAxis_X,SpaceAxis_Y,SpaceXY,Asteroids,EmptySpaceXY,HomebaseSquare,StarbaseSquare | ? | ? | ? | ? | ? | ? | ? | SpaceRegion);
  List_Of_HiddenCst_Ids(Machine(SpaceRegion)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(SpaceRegion)) == (SpaceAxis_X,SpaceAxis_Y,SpaceXY,Asteroids,EmptySpaceXY,HomebaseSquare,StarbaseSquare);
  List_Of_VisibleVar_Ids(Machine(SpaceRegion)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(SpaceRegion)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Spaceship)) == (Type(MOVEMENT_TYPE) == Cst(SetOf(etype(MOVEMENT_TYPE,0,4)));Type(REPORT_MESSAGE) == Cst(SetOf(etype(REPORT_MESSAGE,0,14)));Type(DOCKED_STATUS) == Cst(SetOf(etype(DOCKED_STATUS,0,1)));Type(GAME_STATUS) == Cst(SetOf(etype(GAME_STATUS,0,2))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Spaceship)) == (Type(MOVE_UP) == Cst(etype(MOVEMENT_TYPE,0,4));Type(MOVE_DOWN) == Cst(etype(MOVEMENT_TYPE,0,4));Type(MOVE_FORWARD) == Cst(etype(MOVEMENT_TYPE,0,4));Type(MOVE_BACKWARD) == Cst(etype(MOVEMENT_TYPE,0,4));Type(WARP_DRIVE) == Cst(etype(MOVEMENT_TYPE,0,4));Type(SUCCESSFULLY_MOVED_UP) == Cst(etype(REPORT_MESSAGE,0,14));Type(SUCCESSFULLY_MOVED_DOWN) == Cst(etype(REPORT_MESSAGE,0,14));Type(SUCCESSFULLY_MOVED_FORWARD) == Cst(etype(REPORT_MESSAGE,0,14));Type(SUCCESSFULLY_MOVED_BACKWARD) == Cst(etype(REPORT_MESSAGE,0,14));Type(SUCCESSFULLY_WARPED) == Cst(etype(REPORT_MESSAGE,0,14));Type(CANNOT_MOVE_UP_DUE_TO_SPACE_BOUNDRY) == Cst(etype(REPORT_MESSAGE,0,14));Type(CANNOT_MOVE_DOWN_DUE_TO_SPACE_BOUNDRY) == Cst(etype(REPORT_MESSAGE,0,14));Type(CANNOT_MOVE_FORWARD_DUE_TO_SPACE_BOUNDRY) == Cst(etype(REPORT_MESSAGE,0,14));Type(CANNOT_MOVE_BACKWARD_DUE_TO_SPACE_BOUNDRY) == Cst(etype(REPORT_MESSAGE,0,14));Type(CANNOT_WARP_DUE_TO_SPACE_BOUNDRY) == Cst(etype(REPORT_MESSAGE,0,14));Type(ASTEROID_COLLISION) == Cst(etype(REPORT_MESSAGE,0,14));Type(INSUFFICIENT_POWER) == Cst(etype(REPORT_MESSAGE,0,14));Type(CANNOT_WARP_INTO_ASTEROID) == Cst(etype(REPORT_MESSAGE,0,14));Type(CANNOT_WARP_TO_THE_SAME_POSITION) == Cst(etype(REPORT_MESSAGE,0,14));Type(CANNOT_IMMEDIATELY_WARP_INTO_STARBASE) == Cst(etype(REPORT_MESSAGE,0,14));Type(DOCKED_AT_STARBASE) == Cst(etype(DOCKED_STATUS,0,1));Type(NOT_DOCKED_AT_STARBASE) == Cst(etype(DOCKED_STATUS,0,1));Type(GAME_WON) == Cst(etype(GAME_STATUS,0,2));Type(GAME_LOST) == Cst(etype(GAME_STATUS,0,2));Type(GAME_NOT_OVER) == Cst(etype(GAME_STATUS,0,2));Type(InitialPower) == Cst(btype(INTEGER,?,?));Type(PowerForNormalMove) == Cst(btype(INTEGER,?,?));Type(PowerForWarpDrive) == Cst(btype(INTEGER,?,?));Type(PowerLossForAsteroidCollision) == Cst(btype(INTEGER,?,?)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Spaceship)) == (Type(numberOfCollisions) == Mvl(btype(INTEGER,?,?));Type(missionRoute) == Mvl(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))));Type(movements) == Mvl(SetOf(btype(INTEGER,?,?)*etype(MOVEMENT_TYPE,?,?)));Type(power) == Mvl(btype(INTEGER,?,?));Type(yPosition) == Mvl(btype(INTEGER,?,?));Type(xPosition) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Spaceship)) == (Type(GameStatus) == Cst(etype(GAME_STATUS,?,?),No_type);Type(DockedAtStarbase) == Cst(etype(DOCKED_STATUS,?,?),No_type);Type(AllMissionMovementsConsumedPower) == Cst(SetOf(btype(INTEGER,?,?)*etype(MOVEMENT_TYPE,?,?)),No_type);Type(RegionsVisited) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type);Type(MissionStatus) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(EngageWarpDrive) == Cst(etype(REPORT_MESSAGE,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(MoveBackward) == Cst(etype(REPORT_MESSAGE,?,?),No_type);Type(MoveForward) == Cst(etype(REPORT_MESSAGE,?,?),No_type);Type(MoveDown) == Cst(etype(REPORT_MESSAGE,?,?),No_type);Type(MoveUp) == Cst(etype(REPORT_MESSAGE,?,?),No_type);Type(NewGame) == Cst(No_type,No_type));
  Observers(Machine(Spaceship)) == (Type(GameStatus) == Cst(etype(GAME_STATUS,?,?),No_type);Type(DockedAtStarbase) == Cst(etype(DOCKED_STATUS,?,?),No_type);Type(AllMissionMovementsConsumedPower) == Cst(SetOf(btype(INTEGER,?,?)*etype(MOVEMENT_TYPE,?,?)),No_type);Type(RegionsVisited) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type);Type(MissionStatus) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
