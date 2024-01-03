// ignore_for_file: must_be_immutable

part of 'adding_exercise_notifier.dart';

/// Represents the state of AddingExercise in the application.
class AddingExerciseState extends Equatable {
  AddingExerciseState({
    this.searchController,
    this.addingExerciseModelObj,
  });

  TextEditingController? searchController;

  AddingExerciseModel? addingExerciseModelObj;

  @override
  List<Object?> get props => [
        searchController,
        addingExerciseModelObj,
      ];

  AddingExerciseState copyWith({
    TextEditingController? searchController,
    AddingExerciseModel? addingExerciseModelObj,
  }) {
    return AddingExerciseState(
      searchController: searchController ?? this.searchController,
      addingExerciseModelObj:
          addingExerciseModelObj ?? this.addingExerciseModelObj,
    );
  }
}
