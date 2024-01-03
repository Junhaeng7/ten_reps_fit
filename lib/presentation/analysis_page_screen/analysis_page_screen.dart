import 'notifier/analysis_page_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:ten_reps/core/app_export.dart';
import 'package:ten_reps/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:ten_reps/widgets/app_bar/appbar_title.dart';
import 'package:ten_reps/widgets/app_bar/custom_app_bar.dart';
import 'package:ten_reps/widgets/custom_bottom_bar.dart';

class AnalysisPageScreen extends ConsumerStatefulWidget {
  const AnalysisPageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AnalysisPageScreenState createState() => AnalysisPageScreenState();
}

class AnalysisPageScreenState extends ConsumerState<AnalysisPageScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: 720.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.fromLTRB(14.h, 28.v, 14.h, 29.v),
                  decoration: AppDecoration.outlinePrimaryContainer,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildLiftingWeightColumn(context),
                      SizedBox(height: 29.v),
                      _buildTwentyEightColumn(context),
                      SizedBox(height: 26.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            "lbl_muscle_recovery".tr,
                            style: CustomTextStyles.bodyMediumAlata,
                          ),
                        ),
                      ),
                      SizedBox(height: 35.v),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 56.v,
                  width: 356.h,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer,
                    borderRadius: BorderRadius.circular(
                      10.h,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: SizedBox(
                    width: 377.h,
                    child: Divider(
                      color: appTheme.black900,
                    ),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_analysis".tr,
      ),
      actions: [
        AppbarSubtitleTwo(
          text: "lbl_setting".tr,
          margin: EdgeInsets.fromLTRB(16.h, 22.v, 16.h, 20.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildLiftingWeightColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_lifting_weight".tr,
              style: CustomTextStyles.bodyMediumAlata,
            ),
          ),
          SizedBox(height: 7.v),
          Container(
            margin: EdgeInsets.only(left: 4.h),
            padding: EdgeInsets.symmetric(
              horizontal: 30.h,
              vertical: 20.v,
            ),
            decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 36.v),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup26BlueA100,
                  height: 113.v,
                  width: 296.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyEightColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_strength_weekness".tr,
            style: CustomTextStyles.bodyMediumAlata,
          ),
          SizedBox(height: 12.v),
          Container(
            margin: EdgeInsets.only(
              left: 3.h,
              right: 1.h,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 78.h),
                        child: Text(
                          "lbl_back".tr,
                          style: CustomTextStyles.bodyMediumActor,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 72.h),
                        child: Text(
                          "lbl_95_80".tr,
                          style: CustomTextStyles.bodyMediumAlata,
                        ),
                      ),
                      SizedBox(height: 1.v),
                      SizedBox(
                        height: 212.v,
                        width: 249.h,
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 94.h),
                                child: SizedBox(
                                  height: 208.v,
                                  child: VerticalDivider(
                                    width: 2.h,
                                    thickness: 2.v,
                                    color: appTheme.black900,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                height: 101.v,
                                width: 190.h,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        child: Divider(
                                          color: appTheme.black900,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        child: Divider(
                                          color: appTheme.black900,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: 212.v,
                                width: 191.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 11.h,
                                  vertical: 13.v,
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: fs.Svg(
                                      ImageConstant.imgGroup133,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgPolygon2,
                                      height: 156.v,
                                      width: 139.h,
                                      alignment: Alignment.center,
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgPolygon2Onerror,
                                      height: 145.v,
                                      width: 159.h,
                                      alignment: Alignment.topRight,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 5.h,
                                  bottom: 21.v,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "lbl_core".tr,
                                      style: CustomTextStyles.bodyMediumActor,
                                    ),
                                    Text(
                                      "lbl_82_80".tr,
                                      style: CustomTextStyles.bodyMediumAlata,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(top: 12.v),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "lbl_shoulder".tr,
                                      style: CustomTextStyles.bodyMediumActor,
                                    ),
                                    Text(
                                      "lbl_40_80".tr,
                                      style: CustomTextStyles.bodyMediumAlata,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Container(
                        height: 34.v,
                        width: 45.h,
                        margin: EdgeInsets.only(right: 70.h),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                "lbl_leg".tr,
                                style: CustomTextStyles.bodyMediumActor,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "lbl_55_80".tr,
                                style: CustomTextStyles.bodyMediumAlata,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 52.v,
                    right: 6.h,
                    bottom: 66.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 3.h),
                          child: Text(
                            "lbl_chest".tr,
                            style: CustomTextStyles.bodyMediumActor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text(
                          "lbl_90_80".tr,
                          style: CustomTextStyles.bodyMediumAlata,
                        ),
                      ),
                      SizedBox(height: 99.v),
                      Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Text(
                          "lbl_arm".tr,
                          style: CustomTextStyles.bodyMediumActor,
                        ),
                      ),
                      Text(
                        "lbl_95_80".tr,
                        style: CustomTextStyles.bodyMediumAlata,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
