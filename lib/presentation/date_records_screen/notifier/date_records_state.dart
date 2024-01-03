// ignore_for_file: must_be_immutable

part of 'date_records_notifier.dart';

/// Represents the state of DateRecords in the application.
class DateRecordsState extends Equatable {
  DateRecordsState({
    this.rangeStart,
    this.rangeEnd,
    this.selectedDay,
    this.focusedDay,
    this.rangeSelectionMode = RangeSelectionMode.toggledOn,
    this.dateRecordsModelObj,
  });

  DateRecordsModel? dateRecordsModelObj;

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  DateTime? focusedDay;

  RangeSelectionMode rangeSelectionMode;

  @override
  List<Object?> get props => [
        rangeStart,
        rangeEnd,
        selectedDay,
        focusedDay,
        rangeSelectionMode,
        dateRecordsModelObj,
      ];

  DateRecordsState copyWith({
    DateTime? rangeStart,
    DateTime? rangeEnd,
    DateTime? selectedDay,
    DateTime? focusedDay,
    RangeSelectionMode? rangeSelectionMode,
    DateRecordsModel? dateRecordsModelObj,
  }) {
    return DateRecordsState(
      rangeStart: rangeStart ?? this.rangeStart,
      rangeEnd: rangeEnd ?? this.rangeEnd,
      selectedDay: selectedDay ?? this.selectedDay,
      focusedDay: focusedDay ?? this.focusedDay,
      rangeSelectionMode: rangeSelectionMode ?? this.rangeSelectionMode,
      dateRecordsModelObj: dateRecordsModelObj ?? this.dateRecordsModelObj,
    );
  }
}
