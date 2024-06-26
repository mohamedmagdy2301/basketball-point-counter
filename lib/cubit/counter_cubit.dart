import 'package:basketball_point/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(IncremenScoreState());
  int scoreA = 0;
  int scoreB = 0;

  void incrementScore({required bool isTeamA, required int score}) {
    if (isTeamA) {
      scoreA += score;

      emit(IncremenScoreState());
    } else {
      scoreB += score;

      emit(IncremenScoreState());
    }
  }

  void resetScore() {
    scoreA = 0;
    scoreB = 0;
    emit(ResetScoreState());
  }
}
