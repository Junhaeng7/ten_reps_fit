// ignore_for_file: must_be_immutable

part of 'analysis_page_notifier.dart';

/// Represents the state of AnalysisPage in the application.
class AnalysisPageState extends Equatable {
  AnalysisPageState({this.analysisPageModelObj});

  AnalysisPageModel? analysisPageModelObj;

  @override
  List<Object?> get props => [
        analysisPageModelObj,
      ];

  AnalysisPageState copyWith({AnalysisPageModel? analysisPageModelObj}) {
    return AnalysisPageState(
      analysisPageModelObj: analysisPageModelObj ?? this.analysisPageModelObj,
    );
  }
}
