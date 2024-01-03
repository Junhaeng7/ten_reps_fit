import '../date_records_screen/widgets/exercisecomponentlist_item_widget.dart';
import 'models/exercisecomponentlist_item_model.dart';
import 'notifier/date_records_notifier.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:ten_reps/core/app_export.dart';
import 'package:ten_reps/widgets/custom_bottom_bar.dart';

class DateRecordsScreen extends ConsumerStatefulWidget {
  const DateRecordsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DateRecordsScreenState createState() => DateRecordsScreenState();
}

class DateRecordsScreenState extends ConsumerState<DateRecordsScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildTwentyFourRow(context),
              Container(
                padding: EdgeInsets.fromLTRB(8.h, 3.v, 8.h, 4.v),
                decoration: AppDecoration.outlinePrimaryContainer,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildCalendar(context),
                    SizedBox(height: 16.v),
                    _buildExerciseComponentList(context),
                    SizedBox(height: 16.v),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 38.v,
                  width: 34.h,
                  margin: EdgeInsets.only(left: 68.h),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgHome,
                        height: 36.v,
                        width: 34.h,
                        radius: BorderRadius.circular(
                          3.h,
                        ),
                        alignment: Alignment.topCenter,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgStar11,
                        height: 22.v,
                        width: 21.h,
                        radius: BorderRadius.circular(
                          3.h,
                        ),
                        alignment: Alignment.bottomCenter,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyFourRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: Text(
              "lbl_workout_log".tr,
              style: CustomTextStyles.headlineSmallPontanoSansWhiteA700,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 53.h,
              top: 10.v,
              bottom: 9.v,
            ),
            child: Text(
              "lbl_setting".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return SizedBox(
          height: 44.v,
          width: 370.h,
          child: TableCalendar(
            locale: 'en_US',
            firstDay: DateTime(DateTime.now().year - 5),
            lastDay: DateTime(DateTime.now().year + 5),
            calendarFormat: CalendarFormat.month,
            rangeSelectionMode:
                ref.watch(dateRecordsNotifier).rangeSelectionMode,
            startingDayOfWeek: StartingDayOfWeek.sunday,
            headerStyle: HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
            ),
            calendarStyle: CalendarStyle(
              outsideDaysVisible: false,
              isTodayHighlighted: true,
            ),
            daysOfWeekStyle: DaysOfWeekStyle(),
            headerVisible: false,
            focusedDay:
                ref.watch(dateRecordsNotifier).focusedDay ?? DateTime.now(),
            rangeStartDay: ref.watch(dateRecordsNotifier).rangeStart,
            rangeEndDay: ref.watch(dateRecordsNotifier).rangeEnd,
            onDaySelected: (selectedDay, focusedDay) {
              if (!isSameDay(
                  ref.watch(dateRecordsNotifier).selectedDay, selectedDay)) {
                ref.watch(dateRecordsNotifier).focusedDay = focusedDay;
                ref.watch(dateRecordsNotifier).selectedDay = selectedDay;
                ref.watch(dateRecordsNotifier).rangeSelectionMode =
                    RangeSelectionMode.toggledOn;
              }
            },
            onRangeSelected: (start, end, focusedDay) {
              ref.watch(dateRecordsNotifier).focusedDay = focusedDay;
              ref.watch(dateRecordsNotifier).rangeEnd = end;
              ref.watch(dateRecordsNotifier).rangeStart = start;
              ref.watch(dateRecordsNotifier).rangeSelectionMode =
                  RangeSelectionMode.toggledOn;
            },
            onPageChanged: (focusedDay) {
              ref.watch(dateRecordsNotifier).focusedDay = focusedDay;
            },
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildExerciseComponentList(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 13.v,
            );
          },
          itemCount: ref
                  .watch(dateRecordsNotifier)
                  .dateRecordsModelObj
                  ?.exercisecomponentlistItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            ExercisecomponentlistItemModel model = ref
                    .watch(dateRecordsNotifier)
                    .dateRecordsModelObj
                    ?.exercisecomponentlistItemList[index] ??
                ExercisecomponentlistItemModel();
            return ExercisecomponentlistItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
