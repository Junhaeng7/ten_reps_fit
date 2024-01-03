// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:ten_reps/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'exerciselist_item_model.dart';

/// This class defines the variables used in the [routine_page_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RoutinePageModel extends Equatable {
  RoutinePageModel({
    this.dropdownItemList = const [],
    this.exerciselistItemList = const [],
  }) {}

  List<SelectionPopupModel> dropdownItemList;

  List<ExerciselistItemModel> exerciselistItemList;

  RoutinePageModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<ExerciselistItemModel>? exerciselistItemList,
  }) {
    return RoutinePageModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      exerciselistItemList: exerciselistItemList ?? this.exerciselistItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, exerciselistItemList];
}
