import 'package:bloc/bloc.dart';

abstract class ShuffleGameState {
  ShuffleGameState();
}

class InitialShuffleState extends ShuffleGameState{
  InitialShuffleState();
}

class ChangeShuffleState extends ShuffleGameState
{
  ChangeShuffleState();
}

class EndShuffleState extends ShuffleGameState{
  EndShuffleState();
}
