// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'exerciselist1_item_model.dart';

/// This class defines the variables used in the [exercise_library_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExerciseLibraryModel extends Equatable {
  ExerciseLibraryModel({this.exerciselist1ItemList = const []}) {}

  List<Exerciselist1ItemModel> exerciselist1ItemList;

  ExerciseLibraryModel copyWith(
      {List<Exerciselist1ItemModel>? exerciselist1ItemList}) {
    return ExerciseLibraryModel(
      exerciselist1ItemList:
          exerciselist1ItemList ?? this.exerciselist1ItemList,
    );
  }

  @override
  List<Object?> get props => [exerciselist1ItemList];
}
