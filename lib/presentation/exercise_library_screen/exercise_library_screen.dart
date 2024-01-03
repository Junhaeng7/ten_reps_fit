import '../exercise_library_screen/widgets/exerciselist1_item_widget.dart';
import 'models/exerciselist1_item_model.dart';
import 'notifier/exercise_library_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ten_reps/core/app_export.dart';
import 'package:ten_reps/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:ten_reps/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:ten_reps/widgets/app_bar/custom_app_bar.dart';
import 'package:ten_reps/widgets/custom_search_view.dart';

class ExerciseLibraryScreen extends ConsumerStatefulWidget {
  const ExerciseLibraryScreen({Key? key}) : super(key: key);

  @override
  ExerciseLibraryScreenState createState() => ExerciseLibraryScreenState();
}

class ExerciseLibraryScreenState extends ConsumerState<ExerciseLibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                height: 731.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: EdgeInsets.only(top: 18.v, bottom: 19.v),
                          decoration: AppDecoration.outlinePrimaryContainer,
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            _buildSearchView(context),
                            SizedBox(height: 4.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.only(right: 25.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgTelevision,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize,
                                              margin:
                                                  EdgeInsets.only(top: 3.v)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 9.h, bottom: 3.v),
                                              child: Text("lbl_sort".tr,
                                                  style: theme
                                                      .textTheme.titleLarge))
                                        ]))),
                            SizedBox(height: 4.v)
                          ]))),
                  _buildExerciseList(context),
                  _buildBodyParts(context)
                ])),
            bottomNavigationBar: _buildSixtyEight(context)));
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
  Widget _buildSearchView(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 11.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageConstant.imgGroup4), fit: BoxFit.cover)),
        child: Column(children: [
          SizedBox(height: 45.v),
          Consumer(builder: (context, ref, _) {
            return CustomSearchView(
                controller: ref.watch(exerciseLibraryNotifier).searchController,
                hintText: "lbl_find_exercise".tr);
          })
        ]));
  }

  /// Section Widget
  Widget _buildExerciseList(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(top: 199.v, bottom: 28.v),
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
                          .watch(exerciseLibraryNotifier)
                          .exerciseLibraryModelObj
                          ?.exerciselist1ItemList
                          .length ??
                      0,
                  itemBuilder: (context, index) {
                    Exerciselist1ItemModel model = ref
                            .watch(exerciseLibraryNotifier)
                            .exerciseLibraryModelObj
                            ?.exerciselist1ItemList[index] ??
                        Exerciselist1ItemModel();
                    return Exerciselist1ItemWidget(model);
                  });
            })));
  }

  /// Section Widget
  Widget _buildBodyParts(BuildContext context) {
    return Align(
        alignment: Alignment.topRight,
        child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 81.v),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      height: 35.v,
                      width: 47.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.h, vertical: 7.v),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder17),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgBookmark,
                          height: 21.v,
                          width: 13.h,
                          alignment: Alignment.center)),
                  Container(
                      width: 48.h,
                      margin: EdgeInsets.only(left: 7.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.h, vertical: 4.v),
                      decoration: AppDecoration.outlineRedA,
                      child: Text("lbl_leg".tr,
                          style: CustomTextStyles.titleLargeBlack900)),
                  Container(
                      width: 58.h,
                      margin: EdgeInsets.only(left: 8.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 1.h, vertical: 4.v),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder17),
                      child: Text("lbl_chest".tr,
                          style: CustomTextStyles.titleLargeBlack900)),
                  Container(
                      width: 58.h,
                      margin: EdgeInsets.only(left: 8.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 6.h, vertical: 4.v),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder17),
                      child: Text("lbl_back".tr,
                          style: CustomTextStyles.titleLargeBlack900)),
                  Container(
                      height: 35.v,
                      width: 82.h,
                      margin: EdgeInsets.only(left: 6.h),
                      child: Stack(alignment: Alignment.topCenter, children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                height: 35.v,
                                width: 79.h,
                                decoration: BoxDecoration(
                                    color: appTheme.whiteA700,
                                    borderRadius:
                                        BorderRadius.circular(17.h)))),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                                padding: EdgeInsets.only(top: 4.v),
                                child: Text("lbl_shoulder".tr,
                                    style:
                                        CustomTextStyles.titleLargeBlack900)))
                      ])),
                  Container(
                      width: 58.h,
                      margin: EdgeInsets.only(left: 7.h),
                      padding:
                          EdgeInsets.symmetric(horizontal: 9.h, vertical: 4.v),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder17),
                      child: Text("lbl_arm".tr,
                          style: CustomTextStyles.titleLargeBlack900))
                ])));
  }

  /// Section Widget
  Widget _buildSixtyEight(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 48.h, right: 63.h, bottom: 15.v),
        decoration: AppDecoration.fillBlack
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL5),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              height: 38.v,
              width: 34.h,
              child: Stack(alignment: Alignment.bottomCenter, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgHome,
                    height: 36.v,
                    width: 34.h,
                    radius: BorderRadius.circular(3.h),
                    alignment: Alignment.topCenter),
                CustomImageView(
                    imagePath: ImageConstant.imgStar13,
                    height: 22.v,
                    width: 21.h,
                    radius: BorderRadius.circular(3.h),
                    alignment: Alignment.bottomCenter)
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgGroup21,
              height: 33.v,
              width: 148.h,
              margin: EdgeInsets.only(bottom: 4.v))
        ]));
  }

  onTapHOME(BuildContext context) {
    // TODO: implement Actions
  }
}
