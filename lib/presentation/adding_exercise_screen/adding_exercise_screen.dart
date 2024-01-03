import '../adding_exercise_screen/widgets/exercisecomponent_item_widget.dart';
import 'models/exercisecomponent_item_model.dart';
import 'notifier/adding_exercise_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ten_reps/core/app_export.dart';
import 'package:ten_reps/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:ten_reps/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:ten_reps/widgets/app_bar/custom_app_bar.dart';
import 'package:ten_reps/widgets/custom_elevated_button.dart';
import 'package:ten_reps/widgets/custom_search_view.dart';

class AddingExerciseScreen extends ConsumerStatefulWidget {
  const AddingExerciseScreen({Key? key}) : super(key: key);

  @override
  AddingExerciseScreenState createState() => AddingExerciseScreenState();
}

class AddingExerciseScreenState extends ConsumerState<AddingExerciseScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                height: 714.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  _buildSearchingContainer(context),
                  _buildExerciseComponent(context),
                  Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 16.h),
                          child: Text("lbl_setting".tr,
                              style: theme.textTheme.bodyMedium)))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarSubtitleOne(
            text: "lbl_home".tr,
            margin: EdgeInsets.only(left: 18.h),
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
  Widget _buildSearchingContainer(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: IntrinsicWidth(
                child: SizedBox(
                    height: 784.v,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              padding: EdgeInsets.only(top: 18.v, bottom: 19.v),
                              decoration: AppDecoration.outlinePrimaryContainer,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16.h, vertical: 11.v),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    ImageConstant.imgGroup4),
                                                fit: BoxFit.cover)),
                                        child: Column(children: [
                                          SizedBox(height: 45.v),
                                          Consumer(builder: (context, ref, _) {
                                            return CustomSearchView(
                                                controller: ref
                                                    .watch(
                                                        addingExerciseNotifier)
                                                    .searchController,
                                                hintText:
                                                    "lbl_find_exercise".tr);
                                          })
                                        ])),
                                    SizedBox(height: 28.v),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 25.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgTelevision,
                                                      height: 24.adaptSize,
                                                      width: 24.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          top: 3.v)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 9.h,
                                                          bottom: 3.v),
                                                      child: Text("lbl_sort".tr,
                                                          style: theme.textTheme
                                                              .titleLarge))
                                                ]))),
                                    SizedBox(height: 28.v)
                                  ]))),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                              padding: EdgeInsets.only(top: 83.v),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                        height: 35.v,
                                        width: 47.h,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16.h, vertical: 7.v),
                                        decoration: AppDecoration.fillWhiteA
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder17),
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgBookmark,
                                            height: 21.v,
                                            width: 13.h,
                                            alignment: Alignment.center)),
                                    Container(
                                        width: 48.h,
                                        margin: EdgeInsets.only(left: 7.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 7.h, vertical: 4.v),
                                        decoration: AppDecoration.outlineRedA,
                                        child: Text("lbl_leg".tr,
                                            style: CustomTextStyles
                                                .titleLargeBlack900)),
                                    Container(
                                        width: 58.h,
                                        margin: EdgeInsets.only(left: 8.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 1.h, vertical: 4.v),
                                        decoration: AppDecoration.fillWhiteA
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder17),
                                        child: Text("lbl_chest".tr,
                                            style: CustomTextStyles
                                                .titleLargeBlack900)),
                                    Container(
                                        width: 58.h,
                                        margin: EdgeInsets.only(left: 8.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 6.h, vertical: 4.v),
                                        decoration: AppDecoration.fillWhiteA
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder17),
                                        child: Text("lbl_back".tr,
                                            style: CustomTextStyles
                                                .titleLargeBlack900)),
                                    Container(
                                        width: 87.h,
                                        margin: EdgeInsets.only(left: 6.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 1.h, vertical: 4.v),
                                        decoration: AppDecoration.fillWhiteA
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder17),
                                        child: Text("lbl_shoulder".tr,
                                            style: CustomTextStyles
                                                .titleLargeBlack900)),
                                    Container(
                                        width: 58.h,
                                        margin: EdgeInsets.only(left: 7.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.h, vertical: 4.v),
                                        decoration: AppDecoration.fillWhiteA
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder17),
                                        child: Text("lbl_arm".tr,
                                            style: CustomTextStyles
                                                .titleLargeBlack900))
                                  ])))
                    ])))));
  }

  /// Section Widget
  Widget _buildExerciseComponent(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(top: 204.v, bottom: 6.v),
            child: Consumer(builder: (context, ref, _) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.symmetric(vertical: 0.5.v),
                        child: SizedBox(
                            width: 360.h,
                            child: Divider(
                                height: 2.v,
                                thickness: 2.v,
                                color: theme.colorScheme.onPrimary)));
                  },
                  itemCount: ref
                          .watch(addingExerciseNotifier)
                          .addingExerciseModelObj
                          ?.exercisecomponentItemList
                          .length ??
                      0,
                  itemBuilder: (context, index) {
                    ExercisecomponentItemModel model = ref
                            .watch(addingExerciseNotifier)
                            .addingExerciseModelObj
                            ?.exercisecomponentItemList[index] ??
                        ExercisecomponentItemModel();
                    return ExercisecomponentItemWidget(model);
                  });
            })));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 23.v),
        decoration: AppDecoration.outlineWhiteA,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomElevatedButton(
                  height: 47.v,
                  width: 78.h,
                  text: "lbl_new".tr,
                  buttonTextStyle: CustomTextStyles.titleLargeBlack900),
              Expanded(
                  child: CustomElevatedButton(
                      height: 47.v,
                      text: "msg_choose_exercises".tr,
                      margin: EdgeInsets.only(left: 15.h),
                      buttonTextStyle: CustomTextStyles.titleLargeBlack900,
                      onPressed: () {
                        onTapChooseExercises(context);
                      }))
            ]));
  }

  onTapHOME(BuildContext context) {
    // TODO: implement Actions
  }

  /// Navigates to the todayWorkoutScreen when the action is triggered.
  onTapChooseExercises(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.todayWorkoutScreen,
    );
  }
}
