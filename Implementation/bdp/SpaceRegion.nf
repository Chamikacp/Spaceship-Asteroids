Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(SpaceRegion))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(SpaceRegion))==(Machine(SpaceRegion));
  Level(Machine(SpaceRegion))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(SpaceRegion)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(SpaceRegion))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(SpaceRegion))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(SpaceRegion))==(?);
  List_Includes(Machine(SpaceRegion))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(SpaceRegion))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(SpaceRegion))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(SpaceRegion))==(?);
  Context_List_Variables(Machine(SpaceRegion))==(?);
  Abstract_List_Variables(Machine(SpaceRegion))==(?);
  Local_List_Variables(Machine(SpaceRegion))==(?);
  List_Variables(Machine(SpaceRegion))==(?);
  External_List_Variables(Machine(SpaceRegion))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(SpaceRegion))==(?);
  Abstract_List_VisibleVariables(Machine(SpaceRegion))==(?);
  External_List_VisibleVariables(Machine(SpaceRegion))==(?);
  Expanded_List_VisibleVariables(Machine(SpaceRegion))==(?);
  List_VisibleVariables(Machine(SpaceRegion))==(?);
  Internal_List_VisibleVariables(Machine(SpaceRegion))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(SpaceRegion))==(btrue);
  Gluing_List_Invariant(Machine(SpaceRegion))==(btrue);
  Expanded_List_Invariant(Machine(SpaceRegion))==(btrue);
  Abstract_List_Invariant(Machine(SpaceRegion))==(btrue);
  Context_List_Invariant(Machine(SpaceRegion))==(btrue);
  List_Invariant(Machine(SpaceRegion))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(SpaceRegion))==(btrue);
  Abstract_List_Assertions(Machine(SpaceRegion))==(btrue);
  Context_List_Assertions(Machine(SpaceRegion))==(btrue);
  List_Assertions(Machine(SpaceRegion))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(SpaceRegion))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(SpaceRegion))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(SpaceRegion))==(skip);
  Context_List_Initialisation(Machine(SpaceRegion))==(skip);
  List_Initialisation(Machine(SpaceRegion))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(SpaceRegion))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(SpaceRegion))==(btrue);
  List_Constraints(Machine(SpaceRegion))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(SpaceRegion))==(?);
  List_Operations(Machine(SpaceRegion))==(?)
END
&
THEORY ListInputX END
&
THEORY ListOutputX END
&
THEORY ListHeaderX END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX END
&
THEORY ListSubstitutionX END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(SpaceRegion))==(SpaceAxis_X,SpaceAxis_Y,SpaceXY,Asteroids,EmptySpaceXY,HomebaseSquare,StarbaseSquare);
  Inherited_List_Constants(Machine(SpaceRegion))==(?);
  List_Constants(Machine(SpaceRegion))==(SpaceAxis_X,SpaceAxis_Y,SpaceXY,Asteroids,EmptySpaceXY,HomebaseSquare,StarbaseSquare)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(SpaceRegion))==(?);
  Context_List_Defered(Machine(SpaceRegion))==(?);
  Context_List_Sets(Machine(SpaceRegion))==(?);
  List_Valuable_Sets(Machine(SpaceRegion))==(?);
  Inherited_List_Enumerated(Machine(SpaceRegion))==(?);
  Inherited_List_Defered(Machine(SpaceRegion))==(?);
  Inherited_List_Sets(Machine(SpaceRegion))==(?);
  List_Enumerated(Machine(SpaceRegion))==(?);
  List_Defered(Machine(SpaceRegion))==(?);
  List_Sets(Machine(SpaceRegion))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(SpaceRegion))==(?);
  Expanded_List_HiddenConstants(Machine(SpaceRegion))==(?);
  List_HiddenConstants(Machine(SpaceRegion))==(?);
  External_List_HiddenConstants(Machine(SpaceRegion))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(SpaceRegion))==(btrue);
  Context_List_Properties(Machine(SpaceRegion))==(btrue);
  Inherited_List_Properties(Machine(SpaceRegion))==(btrue);
  List_Properties(Machine(SpaceRegion))==(SpaceAxis_X <: NATURAL1 & SpaceAxis_X = 1..12 & SpaceAxis_Y <: NATURAL1 & SpaceAxis_Y = 1..7 & SpaceXY: SpaceAxis_X <-> SpaceAxis_Y & SpaceXY = SpaceAxis_X*SpaceAxis_Y & Asteroids <: SpaceXY & Asteroids = {3|->2,3|->5,5|->4,6|->7,7|->1,7|->5,7|->7,8|->3,10|->6,11|->2,12|->5} & EmptySpaceXY = SpaceXY-Asteroids & EmptySpaceXY/\Asteroids = {} & EmptySpaceXY\/Asteroids = SpaceXY & HomebaseSquare: EmptySpaceXY & HomebaseSquare = 1|->1 & StarbaseSquare: EmptySpaceXY & StarbaseSquare = 6|->4)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(SpaceRegion)) == (SpaceAxis_X,SpaceAxis_Y,SpaceXY,Asteroids,EmptySpaceXY,HomebaseSquare,StarbaseSquare | ? | ? | ? | ? | ? | ? | ? | SpaceRegion);
  List_Of_HiddenCst_Ids(Machine(SpaceRegion)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(SpaceRegion)) == (SpaceAxis_X,SpaceAxis_Y,SpaceXY,Asteroids,EmptySpaceXY,HomebaseSquare,StarbaseSquare);
  List_Of_VisibleVar_Ids(Machine(SpaceRegion)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(SpaceRegion)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(SpaceRegion)) == (Type(SpaceAxis_X) == Cst(SetOf(btype(INTEGER,"[SpaceAxis_X","]SpaceAxis_X")));Type(SpaceAxis_Y) == Cst(SetOf(btype(INTEGER,"[SpaceAxis_Y","]SpaceAxis_Y")));Type(SpaceXY) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(Asteroids) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(EmptySpaceXY) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(HomebaseSquare) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(StarbaseSquare) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)))
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
