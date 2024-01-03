// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:ten_reps/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [piazza_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PiazzaModel extends Equatable {
  PiazzaModel({this.dropdownItemList = const []}) {}

  List<SelectionPopupModel> dropdownItemList;

  PiazzaModel copyWith({List<SelectionPopupModel>? dropdownItemList}) {
    return PiazzaModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
