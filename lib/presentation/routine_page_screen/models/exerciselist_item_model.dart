import '../../../core/app_export.dart';

/// This class is used in the [exerciselist_item_widget] screen.
class ExerciselistItemModel {
  ExerciselistItemModel({
    this.backRoutineText,
    this.byHellaText,
    this.numOfWorkoutText,
    this.totalRepsText,
    this.bookmarkImage,
    this.id,
  }) {
    backRoutineText = backRoutineText ?? "Back Routine";
    byHellaText = byHellaText ?? "by. Hella";
    numOfWorkoutText = numOfWorkoutText ?? "num. of workout: 5";
    totalRepsText = totalRepsText ?? "total reps: 40";
    bookmarkImage = bookmarkImage ?? ImageConstant.imgBookmarkOnerror;
    id = id ?? "";
  }

  String? backRoutineText;

  String? byHellaText;

  String? numOfWorkoutText;

  String? totalRepsText;

  String? bookmarkImage;

  String? id;
}
