import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:ten_reps/presentation/homepage_page/models/homepage_model.dart';
part 'homepage_state.dart';

final homepageNotifier = StateNotifierProvider<HomepageNotifier, HomepageState>(
    (ref) => HomepageNotifier(HomepageState(
        rangeStart: DateTime.now(),
        rangeEnd: DateTime.now(),
        selectedDay: DateTime.now(),
        focusedDay: DateTime.now(),
        rangeSelectionMode: RangeSelectionMode.toggledOn,
        homepageModelObj: HomepageModel())));

/// A notifier that manages the state of a Homepage according to the event that is dispatched to it.
class HomepageNotifier extends StateNotifier<HomepageState> {
  HomepageNotifier(HomepageState state) : super(state);
}
