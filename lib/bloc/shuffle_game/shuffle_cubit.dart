import 'dart:math';

import 'package:app/bloc/shuffle_game/shuffle_game.state.dart';
import 'package:bloc/bloc.dart';

class ShuffleCubit extends Cubit<ShuffleGameState> {
  ShuffleCubit() : super(InitialShuffleState());

  int x = Random().
  int y = Random().nextInt(10);

  randomize() {
    x = Random().nextInt(10);
    y = Random().nextInt(10);
    emit(ChangeShuffleState());
  }
}
