// ignore_for_file: must_be_immutable

part of 'routine_page_notifier.dart';

/// Represents the state of RoutinePage in the application.
class RoutinePageState extends Equatable {
  RoutinePageState({
    this.selectedDropDownValue,
    this.routinePageModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  RoutinePageModel? routinePageModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        routinePageModelObj,
      ];

  RoutinePageState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    RoutinePageModel? routinePageModelObj,
  }) {
    return RoutinePageState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      routinePageModelObj: routinePageModelObj ?? this.routinePageModelObj,
    );
  }
}
