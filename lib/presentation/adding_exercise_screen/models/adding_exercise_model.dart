// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'exercisecomponent_item_model.dart';

/// This class defines the variables used in the [adding_exercise_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddingExerciseModel extends Equatable {
  AddingExerciseModel({this.exercisecomponentItemList = const []}) {}

  List<ExercisecomponentItemModel> exercisecomponentItemList;

  AddingExerciseModel copyWith(
      {List<ExercisecomponentItemModel>? exercisecomponentItemList}) {
    return AddingExerciseModel(
      exercisecomponentItemList:
          exercisecomponentItemList ?? this.exercisecomponentItemList,
    );
  }

  @override
  List<Object?> get props => [exercisecomponentItemList];
}
