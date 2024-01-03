import 'notifier/homepage_notifier.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:ten_reps/core/app_export.dart';
import 'package:ten_reps/widgets/app_bar/appbar_leading_image.dart';
import 'package:ten_reps/widgets/app_bar/appbar_subtitle.dart';
import 'package:ten_reps/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:ten_reps/widgets/app_bar/custom_app_bar.dart';
import 'package:ten_reps/widgets/custom_elevated_button.dart';

class HomepagePage extends ConsumerStatefulWidget {
  const HomepagePage({Key? key}) : super(key: key);

  @override
  HomepagePageState createState() => HomepagePageState();
}

class HomepagePageState extends ConsumerState<HomepagePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.fromLTRB(6.h, 5.v, 6.h, 6.v),
                decoration: AppDecoration.outlinePrimaryContainer,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 14.v),
                  CustomElevatedButton(
                      height: 65.v,
                      text: "lbl_start_workout".tr,
                      margin: EdgeInsets.only(left: 12.h, right: 10.h),
                      buttonStyle: CustomButtonStyles.fillBlueA,
                      buttonTextStyle: CustomTextStyles.bodyMediumBlack900,
                      onPressed: () {
                        onTapStartWorkout(context);
                      }),
                  SizedBox(height: 19.v),
                  _buildEighteen(context),
                  SizedBox(height: 20.v),
                  _buildThirty(context),
                  SizedBox(height: 20.v),
                  CustomElevatedButton(
                      height: 68.v,
                      text: "msg_exercise_library".tr,
                      margin: EdgeInsets.only(left: 12.h, right: 10.h),
                      buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
                      buttonTextStyle: theme.textTheme.bodyMedium!,
                      onPressed: () {
                        onTapExerciseLibrary(context);
                      }),
                  SizedBox(height: 31.v),
                  Divider(color: appTheme.black900)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgLogoFrame,
            margin: EdgeInsets.only(left: 6.h, top: 6.v, bottom: 14.v)),
        title: AppbarSubtitle(
            text: "lbl_10reps".tr, margin: EdgeInsets.only(left: 4.h)),
        actions: [
          AppbarSubtitleTwo(
              text: "lbl_setting".tr,
              margin: EdgeInsets.fromLTRB(16.h, 22.v, 16.h, 20.v))
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildEighteen(BuildContext context) {
    return Container(
        width: 356.h,
        margin: EdgeInsets.symmetric(horizontal: 11.h),
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 9.v),
        decoration: AppDecoration.fillOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("lbl_analysis".tr, style: theme.textTheme.bodyMedium),
              SizedBox(height: 26.v),
              CustomImageView(
                  imagePath: ImageConstant.imgGroup26,
                  height: 106.v,
                  width: 296.h,
                  alignment: Alignment.center),
              SizedBox(height: 9.v)
            ]));
  }

  /// Section Widget
  Widget _buildThirty(BuildContext context) {
    return Container(
        width: 356.h,
        margin: EdgeInsets.symmetric(horizontal: 11.h),
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 11.v),
        decoration: AppDecoration.fillOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("lbl_calendar".tr, style: theme.textTheme.bodyMedium),
              SizedBox(height: 2.v),
              Align(
                  alignment: Alignment.center,
                  child: Consumer(builder: (context, ref, _) {
                    return SizedBox(
                        height: 250.adaptSize,
                        width: 250.adaptSize,
                        child: TableCalendar(
                            locale: 'en_US',
                            firstDay: DateTime(DateTime.now().year - 5),
                            lastDay: DateTime(DateTime.now().year + 5),
                            calendarFormat: CalendarFormat.month,
                            rangeSelectionMode:
                                ref.watch(homepageNotifier).rangeSelectionMode,
                            startingDayOfWeek: StartingDayOfWeek.monday,
                            headerStyle: HeaderStyle(
                                formatButtonVisible: false,
                                titleCentered: true),
                            calendarStyle: CalendarStyle(
                                outsideDaysVisible: false,
                                isTodayHighlighted: true,
                                todayTextStyle: TextStyle(
                                    color: appTheme.whiteA700,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400),
                                todayDecoration: BoxDecoration(
                                    color:
                                        theme.colorScheme.onSecondaryContainer,
                                    borderRadius: BorderRadius.circular(4.h))),
                            daysOfWeekStyle: DaysOfWeekStyle(
                                weekdayStyle: TextStyle(
                                    color: appTheme.gray40001,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400)),
                            rowHeight: 24.adaptSize,
                            focusedDay:
                                ref.watch(homepageNotifier).focusedDay ??
                                    DateTime.now(),
                            rangeStartDay:
                                ref.watch(homepageNotifier).rangeStart,
                            rangeEndDay: ref.watch(homepageNotifier).rangeEnd,
                            onDaySelected: (selectedDay, focusedDay) {
                              if (!isSameDay(
                                  ref.watch(homepageNotifier).selectedDay,
                                  selectedDay)) {
                                ref.watch(homepageNotifier).focusedDay =
                                    focusedDay;
                                ref.watch(homepageNotifier).selectedDay =
                                    selectedDay;
                                ref.watch(homepageNotifier).rangeSelectionMode =
                                    RangeSelectionMode.toggledOn;
                              }
                            },
                            onRangeSelected: (start, end, focusedDay) {
                              ref.watch(homepageNotifier).focusedDay =
                                  focusedDay;
                              ref.watch(homepageNotifier).rangeEnd = end;
                              ref.watch(homepageNotifier).rangeStart = start;
                              ref.watch(homepageNotifier).rangeSelectionMode =
                                  RangeSelectionMode.toggledOn;
                            },
                            onPageChanged: (focusedDay) {
                              ref.watch(homepageNotifier).focusedDay =
                                  focusedDay;
                            }));
                  })),
              SizedBox(height: 2.v)
            ]));
  }

  /// Navigates to the todayWorkoutScreen when the action is triggered.
  onTapStartWorkout(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.todayWorkoutScreen,
    );
  }

  /// Navigates to the exerciseLibraryScreen when the action is triggered.
  onTapExerciseLibrary(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.exerciseLibraryScreen,
    );
  }
}
