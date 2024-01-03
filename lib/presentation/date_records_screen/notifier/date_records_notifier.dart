import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:table_calendar/table_calendar.dart';
import '../models/exercisecomponentlist_item_model.dart';
import 'package:ten_reps/presentation/date_records_screen/models/date_records_model.dart';
part 'date_records_state.dart';

final dateRecordsNotifier =
    StateNotifierProvider<DateRecordsNotifier, DateRecordsState>(
  (ref) => DateRecordsNotifier(DateRecordsState(
    rangeStart: DateTime.now(),
    rangeEnd: DateTime.now(),
    selectedDay: DateTime.now(),
    focusedDay: DateTime.now(),
    rangeSelectionMode: RangeSelectionMode.toggledOn,
    dateRecordsModelObj: DateRecordsModel(exercisecomponentlistItemList: [
      ExercisecomponentlistItemModel(
          exerciseImage: ImageConstant.imgExerciseImg,
          exerciseName: "Back Squat",
          weightText: "1805 kg",
          timeText: "6:00 min",
          bookmarkImage: ImageConstant.imgBookmarkOnerror),
      ExercisecomponentlistItemModel(
          exerciseImage: ImageConstant.imgExerciseImg68x80,
          exerciseName: "Front Squat",
          weightText: "1805 kg",
          timeText: "6:00 min",
          bookmarkImage: ImageConstant.imgBookmarkWhiteA700),
      ExercisecomponentlistItemModel(
          exerciseImage: ImageConstant.imgExerciseImg66x76,
          exerciseName: "6:00 min",
          weightText: "1805 kg",
          timeText: "Bench Press",
          bookmarkImage: ImageConstant.imgBookmarkWhiteA700)
    ]),
  )),
);

/// A notifier that manages the state of a DateRecords according to the event that is dispatched to it.
class DateRecordsNotifier extends StateNotifier<DateRecordsState> {
  DateRecordsNotifier(DateRecordsState state) : super(state) {}
}
