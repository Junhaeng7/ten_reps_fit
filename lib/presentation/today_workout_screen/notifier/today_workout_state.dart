// ignore_for_file: must_be_immutable

part of 'today_workout_notifier.dart';

/// Represents the state of TodayWorkout in the application.
class TodayWorkoutState extends Equatable {
  TodayWorkoutState({
    this.rangeStart,
    this.rangeEnd,
    this.selectedDay,
    this.focusedDay,
    this.rangeSelectionMode = RangeSelectionMode.toggledOn,
    this.todayWorkoutModelObj,
  });

  TodayWorkoutModel? todayWorkoutModelObj;

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  DateTime? focusedDay;

  RangeSelectionMode rangeSelectionMode;

  @override
  List<Object?> get props => [
        rangeStart,
        rangeEnd,
        selectedDay,
        focusedDay,
        rangeSelectionMode,
        todayWorkoutModelObj,
      ];

  TodayWorkoutState copyWith({
    DateTime? rangeStart,
    DateTime? rangeEnd,
    DateTime? selectedDay,
    DateTime? focusedDay,
    RangeSelectionMode? rangeSelectionMode,
    TodayWorkoutModel? todayWorkoutModelObj,
  }) {
    return TodayWorkoutState(
      rangeStart: rangeStart ?? this.rangeStart,
      rangeEnd: rangeEnd ?? this.rangeEnd,
      selectedDay: selectedDay ?? this.selectedDay,
      focusedDay: focusedDay ?? this.focusedDay,
      rangeSelectionMode: rangeSelectionMode ?? this.rangeSelectionMode,
      todayWorkoutModelObj: todayWorkoutModelObj ?? this.todayWorkoutModelObj,
    );
  }
}
