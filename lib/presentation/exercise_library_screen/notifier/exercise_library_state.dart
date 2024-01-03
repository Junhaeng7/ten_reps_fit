// ignore_for_file: must_be_immutable

part of 'exercise_library_notifier.dart';

/// Represents the state of ExerciseLibrary in the application.
class ExerciseLibraryState extends Equatable {
  ExerciseLibraryState({
    this.searchController,
    this.exerciseLibraryModelObj,
  });

  TextEditingController? searchController;

  ExerciseLibraryModel? exerciseLibraryModelObj;

  @override
  List<Object?> get props => [
        searchController,
        exerciseLibraryModelObj,
      ];

  ExerciseLibraryState copyWith({
    TextEditingController? searchController,
    ExerciseLibraryModel? exerciseLibraryModelObj,
  }) {
    return ExerciseLibraryState(
      searchController: searchController ?? this.searchController,
      exerciseLibraryModelObj:
          exerciseLibraryModelObj ?? this.exerciseLibraryModelObj,
    );
  }
}
