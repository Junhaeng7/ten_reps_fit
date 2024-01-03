import 'notifier/today_workout_notifier.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:ten_reps/core/app_export.dart';
import 'package:ten_reps/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:ten_reps/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:ten_reps/widgets/app_bar/custom_app_bar.dart';
import 'package:ten_reps/widgets/custom_elevated_button.dart';

class TodayWorkoutScreen extends ConsumerStatefulWidget {
  const TodayWorkoutScreen({Key? key}) : super(key: key);

  @override
  TodayWorkoutScreenState createState() => TodayWorkoutScreenState();
}

class TodayWorkoutScreenState extends ConsumerState<TodayWorkoutScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            appBar: _buildAppBar(context),
            body: SizedBox(
                height: 784.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          margin: EdgeInsets.only(bottom: 43.v),
                          padding: EdgeInsets.only(top: 3.v, bottom: 4.v),
                          decoration: AppDecoration.outlinePrimaryContainer,
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            _buildCalendar(context),
                            SizedBox(height: 9.v),
                            _buildExercise2(context,
                                exerciseImage:
                                    ImageConstant.imgExerciseImg66x76,
                                backSquat: "lbl_bench_press".tr),
                            Spacer(),
                            _buildExercise2(context,
                                exerciseImage: ImageConstant.imgExerciseImg,
                                backSquat: "lbl_back_squat".tr),
                            SizedBox(height: 21.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.only(right: 13.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapAddExercise(context);
                                              },
                                              child: SizedBox(
                                                  height: 43.v,
                                                  width: 55.h,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                height: 40.v,
                                                                width: 55.h,
                                                                decoration: BoxDecoration(
                                                                    color: appTheme
                                                                        .gray300,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20.h)))),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 15
                                                                            .h),
                                                                child: Text(
                                                                    "lbl2".tr,
                                                                    style: CustomTextStyles
                                                                        .displaySmallBlack900)))
                                                      ]))),
                                          CustomElevatedButton(
                                              width: 76.h,
                                              text: "lbl_45_30".tr,
                                              margin: EdgeInsets.only(
                                                  left: 72.h,
                                                  top: 3.v,
                                                  bottom: 3.v),
                                              buttonStyle: CustomButtonStyles
                                                  .fillOnPrimaryContainer,
                                              buttonTextStyle:
                                                  theme.textTheme.titleLarge!)
                                        ]))),
                            SizedBox(height: 66.v)
                          ]))),
                  _buildBottomBar(context),
                  _buildExerciseMain(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarSubtitleOne(
            text: "lbl_home".tr,
            margin: EdgeInsets.only(left: 17.h),
            onTap: () {
              onTapHOME(context);
            }),
        actions: [
          AppbarSubtitleTwo(
              text: "lbl_setting".tr,
              margin: EdgeInsets.fromLTRB(16.h, 22.v, 16.h, 20.v))
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return SizedBox(
          height: 44.v,
          width: 370.h,
          child: TableCalendar(
              locale: 'en_US',
              firstDay: DateTime(DateTime.now().year - 5),
              lastDay: DateTime(DateTime.now().year + 5),
              calendarFormat: CalendarFormat.month,
              rangeSelectionMode:
                  ref.watch(todayWorkoutNotifier).rangeSelectionMode,
              startingDayOfWeek: StartingDayOfWeek.sunday,
              headerStyle:
                  HeaderStyle(formatButtonVisible: false, titleCentered: true),
              calendarStyle: CalendarStyle(
                  outsideDaysVisible: false, isTodayHighlighted: true),
              daysOfWeekStyle: DaysOfWeekStyle(),
              headerVisible: false,
              focusedDay:
                  ref.watch(todayWorkoutNotifier).focusedDay ?? DateTime.now(),
              rangeStartDay: ref.watch(todayWorkoutNotifier).rangeStart,
              rangeEndDay: ref.watch(todayWorkoutNotifier).rangeEnd,
              onDaySelected: (selectedDay, focusedDay) {
                if (!isSameDay(
                    ref.watch(todayWorkoutNotifier).selectedDay, selectedDay)) {
                  ref.watch(todayWorkoutNotifier).focusedDay = focusedDay;
                  ref.watch(todayWorkoutNotifier).selectedDay = selectedDay;
                  ref.watch(todayWorkoutNotifier).rangeSelectionMode =
                      RangeSelectionMode.toggledOn;
                }
              },
              onRangeSelected: (start, end, focusedDay) {
                ref.watch(todayWorkoutNotifier).focusedDay = focusedDay;
                ref.watch(todayWorkoutNotifier).rangeEnd = end;
                ref.watch(todayWorkoutNotifier).rangeStart = start;
                ref.watch(todayWorkoutNotifier).rangeSelectionMode =
                    RangeSelectionMode.toggledOn;
              },
              onPageChanged: (focusedDay) {
                ref.watch(todayWorkoutNotifier).focusedDay = focusedDay;
              }));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 694.v),
            padding: EdgeInsets.fromLTRB(39.h, 13.v, 39.h, 15.v),
            decoration: AppDecoration.outlineWhiteA700,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 52.v,
                      width: 76.h,
                      margin: EdgeInsets.only(left: 9.h, bottom: 8.v),
                      padding:
                          EdgeInsets.symmetric(horizontal: 18.h, vertical: 7.v),
                      decoration: AppDecoration.fillOnPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder3),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgClock,
                          height: 38.adaptSize,
                          width: 38.adaptSize,
                          alignment: Alignment.center)),
                  CustomElevatedButton(
                      height: 52.v,
                      width: 105.h,
                      text: "lbl_finish".tr,
                      margin: EdgeInsets.only(bottom: 8.v),
                      buttonStyle: CustomButtonStyles.fillBlueATL26,
                      buttonTextStyle: theme.textTheme.headlineLarge!)
                ])));
  }

  /// Section Widget
  Widget _buildExerciseMain(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.only(top: 149.v),
            padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 12.v),
            decoration: AppDecoration.fillOnPrimaryContainer,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 7.v),
                  Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Column(children: [
                        Padding(
                            padding: EdgeInsets.only(right: 5.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 2.v),
                                      child: Text("lbl_set".tr,
                                          style: theme.textTheme.titleLarge)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 66.h, bottom: 1.v),
                                      child: Text("lbl_kg".tr,
                                          style: theme.textTheme.titleLarge)),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 45.h, top: 3.v),
                                      child: Text("lbl_reps".tr,
                                          style: theme.textTheme.titleLarge)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 97.h, bottom: 2.v),
                                      child: Text("lbl_done".tr,
                                          style: theme.textTheme.titleLarge))
                                ])),
                        SizedBox(height: 16.v),
                        SizedBox(
                            height: 219.v,
                            width: 343.h,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SizedBox(
                                          height: 40.v,
                                          width: 343.h,
                                          child: Stack(
                                              alignment: Alignment.centerRight,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 69.h),
                                                        child: Row(children: [
                                                          Container(
                                                              height: 40.v,
                                                              width: 57.h,
                                                              decoration: BoxDecoration(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .primaryContainer,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.h))),
                                                          Container(
                                                              height: 40.v,
                                                              width: 57.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          17.h),
                                                              decoration: BoxDecoration(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .primaryContainer,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.h)))
                                                        ]))),
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Container(
                                                        height: 40.v,
                                                        width: 57.h,
                                                        decoration: BoxDecoration(
                                                            color: theme
                                                                .colorScheme
                                                                .primaryContainer,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(20
                                                                        .h)))),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 8.v,
                                                        right: 14.h,
                                                        bottom: 8.v),
                                                    child: _buildRow3(context,
                                                        text1: "lbl_4".tr,
                                                        text2: "lbl_25".tr,
                                                        text3: "lbl_8".tr))
                                              ]))),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          height: 40.v,
                                          width: 342.h,
                                          margin: EdgeInsets.only(bottom: 56.v),
                                          child: Stack(
                                              alignment: Alignment.centerRight,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 69.h),
                                                        child: Row(children: [
                                                          Container(
                                                              height: 40.v,
                                                              width: 57.h,
                                                              decoration: BoxDecoration(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .primaryContainer,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.h))),
                                                          Container(
                                                              height: 40.v,
                                                              width: 57.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          17.h),
                                                              decoration: BoxDecoration(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .primaryContainer,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.h)))
                                                        ]))),
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Container(
                                                        height: 40.v,
                                                        width: 57.h,
                                                        decoration: BoxDecoration(
                                                            color: theme
                                                                .colorScheme
                                                                .primaryContainer,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(20
                                                                        .h)))),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 8.v,
                                                        right: 14.h,
                                                        bottom: 8.v),
                                                    child: _buildRow3(context,
                                                        text1: "lbl_3".tr,
                                                        text2: "lbl_20".tr,
                                                        text3: "lbl_10".tr))
                                              ]))),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                          height: 40.v,
                                          width: 342.h,
                                          margin: EdgeInsets.only(top: 61.v),
                                          child: Stack(
                                              alignment: Alignment.centerRight,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 69.h),
                                                        child: Row(children: [
                                                          Container(
                                                              height: 40.v,
                                                              width: 57.h,
                                                              decoration: BoxDecoration(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .primaryContainer,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.h))),
                                                          Container(
                                                              height: 40.v,
                                                              width: 57.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          17.h),
                                                              decoration: BoxDecoration(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .primaryContainer,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.h)))
                                                        ]))),
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Container(
                                                        height: 40.v,
                                                        width: 57.h,
                                                        decoration: BoxDecoration(
                                                            color: theme
                                                                .colorScheme
                                                                .primaryContainer,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(20
                                                                        .h)))),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 8.v,
                                                        right: 15.h,
                                                        bottom: 8.v),
                                                    child: _buildRowValue(
                                                        context,
                                                        textOne: "lbl_22".tr,
                                                        textTwenty: "lbl_20".tr,
                                                        textTen: "lbl_10".tr))
                                              ]))),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 1.h),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                SizedBox(
                                                    height: 41.v,
                                                    width: 342.h,
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                        height: 40
                                                                            .v,
                                                                        width: 57
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                theme.colorScheme.primaryContainer,
                                                                            borderRadius: BorderRadius.circular(5.h))),
                                                                    Container(
                                                                        height: 40
                                                                            .v,
                                                                        width: 57
                                                                            .h,
                                                                        margin: EdgeInsets.only(
                                                                            left: 17
                                                                                .h),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                theme.colorScheme.primaryContainer,
                                                                            borderRadius: BorderRadius.circular(5.h))),
                                                                    CustomElevatedButton(
                                                                        height: 40
                                                                            .v,
                                                                        width: 57
                                                                            .h,
                                                                        text: "lbl_1_45"
                                                                            .tr,
                                                                        margin: EdgeInsets.only(
                                                                            left: 13
                                                                                .h),
                                                                        buttonStyle:
                                                                            CustomButtonStyles
                                                                                .fillPrimaryContainer,
                                                                        buttonTextStyle: theme
                                                                            .textTheme
                                                                            .titleLarge!)
                                                                  ])),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Container(
                                                                  height: 40.v,
                                                                  width: 57.h,
                                                                  decoration: BoxDecoration(
                                                                      color: theme
                                                                          .colorScheme
                                                                          .primaryContainer,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              20.h)))),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 8.v,
                                                                      right:
                                                                          14.h,
                                                                      bottom:
                                                                          8.v),
                                                              child: _buildRowValue(
                                                                  context,
                                                                  textOne:
                                                                      "lbl_1"
                                                                          .tr,
                                                                  textTwenty:
                                                                      "lbl_20"
                                                                          .tr,
                                                                  textTen:
                                                                      "lbl_10"
                                                                          .tr))
                                                        ])),
                                                SizedBox(height: 19.v),
                                                Container(
                                                    height: 40.v,
                                                    width: 57.h,
                                                    margin: EdgeInsets.only(
                                                        right: 70.h),
                                                    decoration: BoxDecoration(
                                                        color: theme.colorScheme
                                                            .primaryContainer,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5.h))),
                                                SizedBox(height: 21.v),
                                                Container(
                                                    height: 40.v,
                                                    width: 57.h,
                                                    margin: EdgeInsets.only(
                                                        right: 70.h),
                                                    decoration: BoxDecoration(
                                                        color: theme.colorScheme
                                                            .primaryContainer,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5.h))),
                                                SizedBox(height: 15.v),
                                                Container(
                                                    height: 40.v,
                                                    width: 57.h,
                                                    margin: EdgeInsets.only(
                                                        right: 70.h),
                                                    decoration: BoxDecoration(
                                                        color: theme.colorScheme
                                                            .primaryContainer,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5.h)))
                                              ])))
                                ]))
                      ])),
                  SizedBox(height: 25.v),
                  Padding(
                      padding: EdgeInsets.only(left: 50.h, right: 29.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                height: 43.v,
                                width: 109.h,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                              height: 40.v,
                                              width: 109.h,
                                              decoration: BoxDecoration(
                                                  color: theme.colorScheme
                                                      .primaryContainer,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.h)))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Text("lbl3".tr,
                                              style:
                                                  theme.textTheme.displaySmall))
                                    ])),
                            SizedBox(
                                height: 43.v,
                                width: 109.h,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                              height: 40.v,
                                              width: 109.h,
                                              decoration: BoxDecoration(
                                                  color: theme.colorScheme
                                                      .primaryContainer,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.h)))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Text("lbl2".tr,
                                              style:
                                                  theme.textTheme.displaySmall))
                                    ]))
                          ]))
                ])));
  }

  /// Common widget
  Widget _buildExercise2(
    BuildContext context, {
    required String exerciseImage,
    required String backSquat,
  }) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 8.v),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: exerciseImage,
              height: 68.v,
              width: 80.h,
              radius: BorderRadius.circular(10.h)),
          Padding(
              padding: EdgeInsets.only(left: 25.h, top: 23.v, bottom: 20.v),
              child: Text(backSquat,
                  style: theme.textTheme.titleLarge!
                      .copyWith(color: appTheme.whiteA700))),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgThumbsUp,
              height: 27.v,
              width: 23.h,
              margin: EdgeInsets.only(top: 23.v, bottom: 17.v)),
          CustomImageView(
              imagePath: ImageConstant.imgGrid,
              height: 6.v,
              width: 25.h,
              margin: EdgeInsets.fromLTRB(22.h, 33.v, 5.h, 29.v))
        ]));
  }

  /// Common widget
  Widget _buildRow3(
    BuildContext context, {
    required String text1,
    required String text2,
    required String text3,
  }) {
    return Row(children: [
      Text(text1,
          style:
              theme.textTheme.titleLarge!.copyWith(color: appTheme.whiteA700)),
      Spacer(flex: 30),
      Text(text2,
          style:
              theme.textTheme.titleLarge!.copyWith(color: appTheme.whiteA700)),
      Spacer(flex: 21),
      Text(text3,
          style:
              theme.textTheme.titleLarge!.copyWith(color: appTheme.whiteA700)),
      Spacer(flex: 47),
      CustomImageView(
          imagePath: ImageConstant.imgCheckmark, height: 22.v, width: 27.h)
    ]);
  }

  /// Common widget
  Widget _buildRowValue(
    BuildContext context, {
    required String textOne,
    required String textTwenty,
    required String textTen,
  }) {
    return Row(children: [
      Text(textOne,
          style:
              theme.textTheme.titleLarge!.copyWith(color: appTheme.whiteA700)),
      Spacer(flex: 31),
      Text(textTwenty,
          style:
              theme.textTheme.titleLarge!.copyWith(color: appTheme.whiteA700)),
      Spacer(flex: 21),
      Text(textTen,
          style:
              theme.textTheme.titleLarge!.copyWith(color: appTheme.whiteA700)),
      Spacer(flex: 47),
      CustomImageView(
          imagePath: ImageConstant.imgCheckmark, height: 22.v, width: 27.h)
    ]);
  }

  onTapHOME(BuildContext context) {
    // TODO: implement Actions
  }

  /// Navigates to the exerciseLibraryScreen when the action is triggered.
  onTapAddExercise(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.exerciseLibraryScreen,
    );
  }
}
