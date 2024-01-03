import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/exerciselist_item_model.dart';
import 'package:ten_reps/presentation/routine_page_screen/models/routine_page_model.dart';
part 'routine_page_state.dart';

final routinePageNotifier =
    StateNotifierProvider<RoutinePageNotifier, RoutinePageState>(
        (ref) => RoutinePageNotifier(RoutinePageState(
            selectedDropDownValue: SelectionPopupModel(title: ''),
            routinePageModelObj: RoutinePageModel(dropdownItemList: [
              SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
              SelectionPopupModel(id: 2, title: "Item Two"),
              SelectionPopupModel(id: 3, title: "Item Three")
            ], exerciselistItemList: [
              ExerciselistItemModel(
                  backRoutineText: "Back Routine",
                  byHellaText: "by. Hella",
                  numOfWorkoutText: "num. of workout: 5",
                  totalRepsText: "total reps: 40",
                  bookmarkImage: ImageConstant.imgBookmarkOnerror)
            ]))));

/// A notifier that manages the state of a RoutinePage according to the event that is dispatched to it.
class RoutinePageNotifier extends StateNotifier<RoutinePageState> {
  RoutinePageNotifier(RoutinePageState state) : super(state);
}
