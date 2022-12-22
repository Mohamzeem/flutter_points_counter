import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:basketball_app/cubits/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());
  // CounterCubit(super.initialState);

  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamIncrement({required String team, required int number}) {
    if (team == 'A') {
      teamAPoints += number;
      emit(CounterAIncrementState());
    } else {
      teamBPoints += number;
      emit(CounterBIncrementState());
    }
  }

  void teamReset({required String team}) {
    if (team == 'A') {
      teamAPoints = 0;
      emit(CounterAIncrementState());
    } else {
      teamBPoints = 0;
      emit(CounterBIncrementState());
    }
  }
}
