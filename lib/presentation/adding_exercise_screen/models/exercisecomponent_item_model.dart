import '../../../core/app_export.dart';

/// This class is used in the [exercisecomponent_item_widget] screen.
class ExercisecomponentItemModel {
  ExercisecomponentItemModel({
    this.exerciseImage,
    this.exerciseName,
    this.bookmarkImage,
    this.infoText,
    this.id,
  }) {
    exerciseImage = exerciseImage ?? ImageConstant.imgExerciseImg;
    exerciseName = exerciseName ?? "Back Squat";
    bookmarkImage = bookmarkImage ?? ImageConstant.imgBookmarkOnerror;
    infoText = infoText ?? "i";
    id = id ?? "";
  }

  String? exerciseImage;

  String? exerciseName;

  String? bookmarkImage;

  String? infoText;

  String? id;
}
