import 'package:app/bloc/shuffle_game/shuffle_cubit.dart';
import 'package:app/bloc/shuffle_game/shuffle_game.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShuffleCubit(),
      child: BlocBuilder<ShuffleCubit, ShuffleGameState>(
          builder: (context, state) {
        return myScaffold(context);
      }),
    );
  }

  Scaffold myScaffold(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Align(
                    alignment: Alignment(context.watch<ShuffleCubit>().x.toDouble(), 0.2),
                    child: CircleAvatar(
                      radius: 35.0,
                      backgroundColor: Colors.amber,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        context.read<ShuffleCubit>().randomize();
      }),
    );
  }
}
