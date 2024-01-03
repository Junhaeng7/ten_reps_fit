import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ten_reps/presentation/analysis_page_screen/models/analysis_page_model.dart';
part 'analysis_page_state.dart';

final analysisPageNotifier =
    StateNotifierProvider<AnalysisPageNotifier, AnalysisPageState>(
  (ref) => AnalysisPageNotifier(AnalysisPageState(
    analysisPageModelObj: AnalysisPageModel(),
  )),
);

/// A notifier that manages the state of a AnalysisPage according to the event that is dispatched to it.
class AnalysisPageNotifier extends StateNotifier<AnalysisPageState> {
  AnalysisPageNotifier(AnalysisPageState state) : super(state) {}
}
