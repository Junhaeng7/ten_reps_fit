// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'exercisecomponentlist_item_model.dart';

/// This class defines the variables used in the [date_records_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DateRecordsModel extends Equatable {
  DateRecordsModel({this.exercisecomponentlistItemList = const []}) {}

  List<ExercisecomponentlistItemModel> exercisecomponentlistItemList;

  DateRecordsModel copyWith(
      {List<ExercisecomponentlistItemModel>? exercisecomponentlistItemList}) {
    return DateRecordsModel(
      exercisecomponentlistItemList:
          exercisecomponentlistItemList ?? this.exercisecomponentlistItemList,
    );
  }

  @override
  List<Object?> get props => [exercisecomponentlistItemList];
}
