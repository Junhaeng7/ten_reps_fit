import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:ten_reps/presentation/today_workout_screen/models/today_workout_model.dart';
part 'today_workout_state.dart';

final todayWorkoutNotifier =
    StateNotifierProvider<TodayWorkoutNotifier, TodayWorkoutState>((ref) =>
        TodayWorkoutNotifier(TodayWorkoutState(
            rangeStart: DateTime.now(),
            rangeEnd: DateTime.now(),
            selectedDay: DateTime.now(),
            focusedDay: DateTime.now(),
            rangeSelectionMode: RangeSelectionMode.toggledOn,
            todayWorkoutModelObj: TodayWorkoutModel())));

/// A notifier that manages the state of a TodayWorkout according to the event that is dispatched to it.
class TodayWorkoutNotifier extends StateNotifier<TodayWorkoutState> {
  TodayWorkoutNotifier(TodayWorkoutState state) : super(state);
}
