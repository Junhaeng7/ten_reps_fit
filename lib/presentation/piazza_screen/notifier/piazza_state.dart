// ignore_for_file: must_be_immutable

part of 'piazza_notifier.dart';

/// Represents the state of Piazza in the application.
class PiazzaState extends Equatable {
  PiazzaState({
    this.selectedDropDownValue,
    this.piazzaModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  PiazzaModel? piazzaModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        piazzaModelObj,
      ];

  PiazzaState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    PiazzaModel? piazzaModelObj,
  }) {
    return PiazzaState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      piazzaModelObj: piazzaModelObj ?? this.piazzaModelObj,
    );
  }
}
