import '../../../core/app_export.dart';

/// This class is used in the [exercisecomponentlist_item_widget] screen.
class ExercisecomponentlistItemModel {
  ExercisecomponentlistItemModel({
    this.exerciseImage,
    this.exerciseName,
    this.weightText,
    this.timeText,
    this.bookmarkImage,
    this.id,
  }) {
    exerciseImage = exerciseImage ?? ImageConstant.imgExerciseImg;
    exerciseName = exerciseName ?? "Back Squat";
    weightText = weightText ?? "1805 kg";
    timeText = timeText ?? "6:00 min";
    bookmarkImage = bookmarkImage ?? ImageConstant.imgBookmarkOnerror;
    id = id ?? "";
  }

  String? exerciseImage;

  String? exerciseName;

  String? weightText;

  String? timeText;

  String? bookmarkImage;

  String? id;
}
