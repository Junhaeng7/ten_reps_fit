import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/exercisecomponent_item_model.dart';
import 'package:ten_reps/presentation/adding_exercise_screen/models/adding_exercise_model.dart';
part 'adding_exercise_state.dart';

final addingExerciseNotifier = StateNotifierProvider<
        AddingExerciseNotifier, AddingExerciseState>(
    (ref) => AddingExerciseNotifier(AddingExerciseState(
        searchController: TextEditingController(),
        addingExerciseModelObj: AddingExerciseModel(exercisecomponentItemList: [
          ExercisecomponentItemModel(
              exerciseImage: ImageConstant.imgExerciseImg,
              exerciseName: "Back Squat",
              bookmarkImage: ImageConstant.imgBookmarkOnerror,
              infoText: "i"),
          ExercisecomponentItemModel(
              exerciseImage: ImageConstant.imgExerciseImg68x80,
              exerciseName: "Front Squat",
              bookmarkImage: ImageConstant.imgBookmarkWhiteA700,
              infoText: "i"),
          ExercisecomponentItemModel(
              exerciseImage: ImageConstant.imgExerciseImg1,
              exerciseName: "Zercher Squat",
              bookmarkImage: ImageConstant.imgBookmarkWhiteA700,
              infoText: "i")
        ]))));

/// A notifier that manages the state of a AddingExercise according to the event that is dispatched to it.
class AddingExerciseNotifier extends StateNotifier<AddingExerciseState> {
  AddingExerciseNotifier(AddingExerciseState state) : super(state);
}
