import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ten_reps/presentation/piazza_screen/models/piazza_model.dart';
part 'piazza_state.dart';

final piazzaNotifier = StateNotifierProvider<PiazzaNotifier, PiazzaState>(
  (ref) => PiazzaNotifier(PiazzaState(
    selectedDropDownValue: SelectionPopupModel(title: ''),
    piazzaModelObj: PiazzaModel(dropdownItemList: [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ]),
  )),
);

/// A notifier that manages the state of a Piazza according to the event that is dispatched to it.
class PiazzaNotifier extends StateNotifier<PiazzaState> {
  PiazzaNotifier(PiazzaState state) : super(state) {}
}
