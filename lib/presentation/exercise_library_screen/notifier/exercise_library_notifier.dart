import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/exerciselist1_item_model.dart';
import 'package:ten_reps/presentation/exercise_library_screen/models/exercise_library_model.dart';
part 'exercise_library_state.dart';

final exerciseLibraryNotifier = StateNotifierProvider<
        ExerciseLibraryNotifier, ExerciseLibraryState>(
    (ref) => ExerciseLibraryNotifier(ExerciseLibraryState(
        searchController: TextEditingController(),
        exerciseLibraryModelObj: ExerciseLibraryModel(exerciselist1ItemList: [
          Exerciselist1ItemModel(
              backSquatImage: ImageConstant.imgExerciseImg,
              backSquatText: "Back Squat",
              bookmarkImage: ImageConstant.imgBookmarkOnerror),
          Exerciselist1ItemModel(
              backSquatImage: ImageConstant.imgExerciseImg68x80,
              backSquatText: "Front Squat",
              bookmarkImage: ImageConstant.imgBookmarkWhiteA700),
          Exerciselist1ItemModel(
              backSquatImage: ImageConstant.imgExerciseImg1,
              backSquatText: "Zercher Squat",
              bookmarkImage: ImageConstant.imgBookmarkWhiteA700)
        ]))));

/// A notifier that manages the state of a ExerciseLibrary according to the event that is dispatched to it.
class ExerciseLibraryNotifier extends StateNotifier<ExerciseLibraryState> {
  ExerciseLibraryNotifier(ExerciseLibraryState state) : super(state);
}
