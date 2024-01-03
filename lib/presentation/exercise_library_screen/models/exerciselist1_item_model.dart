import '../../../core/app_export.dart';

/// This class is used in the [exerciselist1_item_widget] screen.
class Exerciselist1ItemModel {
  Exerciselist1ItemModel({
    this.backSquatImage,
    this.backSquatText,
    this.bookmarkImage,
    this.id,
  }) {
    backSquatImage = backSquatImage ?? ImageConstant.imgExerciseImg;
    backSquatText = backSquatText ?? "Back Squat";
    bookmarkImage = bookmarkImage ?? ImageConstant.imgBookmarkOnerror;
    id = id ?? "";
  }

  String? backSquatImage;

  String? backSquatText;

  String? bookmarkImage;

  String? id;
}
