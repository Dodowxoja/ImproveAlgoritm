abstract class ValidateState {
  ValidateState();
}

class ValidateInitialState extends ValidateEndState {
  ValidateInitialState();
}

class ValidateChangeState extends ValidateEndState{
  ValidateChangeState();
}

class ValidateEndState  extends ValidateState{
  ValidateEndState();
}
