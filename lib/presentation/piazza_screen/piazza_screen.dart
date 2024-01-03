import 'models/piazza_model.dart';
import 'notifier/piazza_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ten_reps/core/app_export.dart';
import 'package:ten_reps/widgets/app_bar/appbar_leading_image.dart';
import 'package:ten_reps/widgets/app_bar/appbar_subtitle.dart';
import 'package:ten_reps/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:ten_reps/widgets/app_bar/custom_app_bar.dart';
import 'package:ten_reps/widgets/custom_bottom_bar.dart';
import 'package:ten_reps/widgets/custom_drop_down.dart';

class PiazzaScreen extends ConsumerStatefulWidget {
  const PiazzaScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PiazzaScreenState createState() => PiazzaScreenState();
}

class PiazzaScreenState extends ConsumerState<PiazzaScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 22.v,
          ),
          child: Column(
            children: [
              _buildSortBy(context),
              SizedBox(height: 32.v),
              _buildNineteen(context),
              SizedBox(height: 5.v),
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
      height: 59.v,
      leadingWidth: 152.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgFulllogoTransparentNobuffer53x44,
        margin: EdgeInsets.only(right: 108.h),
      ),
      title: Container(
        margin: EdgeInsets.only(
          left: 1.h,
          bottom: 8.v,
        ),
        decoration: AppDecoration.row7,
        child: Row(
          children: [
            Container(
              height: 39.v,
              width: 42.h,
              margin: EdgeInsets.only(bottom: 5.v),
              decoration: BoxDecoration(),
            ),
            AppbarSubtitle(
              text: "lbl_10reps".tr,
              margin: EdgeInsets.only(
                left: 4.h,
                top: 6.v,
              ),
            ),
          ],
        ),
      ),
      actions: [
        AppbarSubtitleTwo(
          text: "lbl_setting".tr,
          margin: EdgeInsets.fromLTRB(16.h, 18.v, 16.h, 20.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSortBy(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 21.v,
            width: 78.h,
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 2.v,
            ),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Consumer(
                  builder: (context, ref, _) {
                    return CustomDropDown(
                      width: 78.h,
                      alignment: Alignment.topCenter,
                      items: ref
                              .watch(piazzaNotifier)
                              .piazzaModelObj
                              ?.dropdownItemList ??
                          [],
                      onChanged: (value) {
                        ref.watch(piazzaNotifier).selectedDropDownValue = value;
                      },
                    );
                  },
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Text(
                      "lbl_sort_by".tr,
                      style: CustomTextStyles.bodyMediumBlack900,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 21.v,
            width: 135.h,
            margin: EdgeInsets.only(
              left: 15.h,
              top: 6.v,
              bottom: 2.v,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 20.v,
                    width: 135.h,
                    decoration: BoxDecoration(
                      color: appTheme.blueGray100,
                      borderRadius: BorderRadius.circular(
                        5.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "msg_select_categories".tr,
                    style: CustomTextStyles.bodyMediumBlack900,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          SizedBox(
            height: 30.v,
            width: 28.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 26.v,
                    width: 25.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        5.h,
                      ),
                      border: Border.all(
                        color: appTheme.whiteA700,
                        width: 2.h,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgEdit,
                  height: 21.v,
                  width: 19.h,
                  alignment: Alignment.topRight,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNineteen(BuildContext context) {
    return SizedBox(
      height: 401.v,
      width: 326.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: 38.h,
                bottom: 161.v,
              ),
              child: Text(
                "lbl_remix".tr,
                style: CustomTextStyles.headlineLargeOffsideBlack900,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 1.h),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.h,
                          right: 3.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "lbl_title".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                            Spacer(),
                            Text(
                              "lbl_comments".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 27.h),
                              child: Text(
                                "lbl_views".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 9.v),
                      Divider(),
                    ],
                  ),
                ),
                SizedBox(height: 17.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    right: 1.h,
                  ),
                  child: _buildEightySix(
                    context,
                    howDoIGainWeightText: "msg_how_do_i_gain_weight".tr,
                    three: "lbl_3".tr,
                    tenText: "lbl_10".tr,
                  ),
                ),
                SizedBox(height: 17.v),
                Divider(
                  indent: 1.h,
                  endIndent: 1.h,
                ),
                SizedBox(height: 22.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    right: 2.h,
                  ),
                  child: _buildEightySix(
                    context,
                    howDoIGainWeightText: "msg_how_do_i_gain_weight".tr,
                    three: "lbl_3".tr,
                    tenText: "lbl_10".tr,
                  ),
                ),
                SizedBox(height: 12.v),
                Divider(
                  indent: 2.h,
                ),
                SizedBox(height: 17.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    right: 2.h,
                  ),
                  child: _buildEightySix(
                    context,
                    howDoIGainWeightText: "msg_how_do_i_gain_weight".tr,
                    three: "lbl_3".tr,
                    tenText: "lbl_10".tr,
                  ),
                ),
                SizedBox(height: 17.v),
                Divider(
                  indent: 2.h,
                ),
                SizedBox(height: 12.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    right: 2.h,
                  ),
                  child: _buildEightySix(
                    context,
                    howDoIGainWeightText: "msg_how_do_i_gain_weight".tr,
                    three: "lbl_3".tr,
                    tenText: "lbl_10".tr,
                  ),
                ),
                SizedBox(height: 18.v),
                Divider(
                  endIndent: 2.h,
                ),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    right: 1.h,
                  ),
                  child: _buildEightySix(
                    context,
                    howDoIGainWeightText: "msg_how_do_i_gain_weight".tr,
                    three: "lbl_3".tr,
                    tenText: "lbl_10".tr,
                  ),
                ),
                SizedBox(height: 18.v),
                Divider(
                  endIndent: 2.h,
                ),
                SizedBox(height: 15.v),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: _buildEightySix(
                    context,
                    howDoIGainWeightText: "msg_how_do_i_gain_weight".tr,
                    three: "lbl_3".tr,
                    tenText: "lbl_10".tr,
                  ),
                ),
                SizedBox(height: 19.v),
                Divider(
                  indent: 1.h,
                  endIndent: 1.h,
                ),
                SizedBox(height: 14.v),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: _buildEightySix(
                    context,
                    howDoIGainWeightText: "msg_how_do_i_gain_weight".tr,
                    three: "lbl_3".tr,
                    tenText: "lbl_10".tr,
                  ),
                ),
                SizedBox(height: 20.v),
                Divider(
                  indent: 1.h,
                  endIndent: 1.h,
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

  /// Common widget
  Widget _buildEightySix(
    BuildContext context, {
    required String howDoIGainWeightText,
    required String three,
    required String tenText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          howDoIGainWeightText,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.whiteA700,
          ),
        ),
        Spacer(
          flex: 44,
        ),
        Text(
          three,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: appTheme.whiteA700,
          ),
        ),
        Spacer(
          flex: 55,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgEye,
          height: 13.v,
          width: 22.h,
          margin: EdgeInsets.only(bottom: 3.v),
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.h),
          child: Text(
            tenText,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.whiteA700,
            ),
          ),
        ),
      ],
    );
  }
}
