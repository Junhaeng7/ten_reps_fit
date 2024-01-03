import '../routine_page_screen/widgets/exerciselist_item_widget.dart';
import 'models/exerciselist_item_model.dart';
import 'models/routine_page_model.dart';
import 'notifier/routine_page_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ten_reps/core/app_export.dart';
import 'package:ten_reps/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:ten_reps/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:ten_reps/widgets/app_bar/custom_app_bar.dart';
import 'package:ten_reps/widgets/custom_drop_down.dart';

class RoutinePageScreen extends ConsumerStatefulWidget {
  const RoutinePageScreen({Key? key}) : super(key: key);

  @override
  RoutinePageScreenState createState() => RoutinePageScreenState();
}

class RoutinePageScreenState extends ConsumerState<RoutinePageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(bottom: 2.v),
                padding: EdgeInsets.fromLTRB(12.h, 21.v, 12.h, 22.v),
                decoration: AppDecoration.outlinePrimaryContainer,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Consumer(builder: (context, ref, _) {
                          return CustomDropDown(
                              width: 78.h,
                              hintText: "lbl_sort_by".tr,
                              items: ref
                                      .watch(routinePageNotifier)
                                      .routinePageModelObj
                                      ?.dropdownItemList ??
                                  [],
                              onChanged: (value) {
                                ref
                                    .watch(routinePageNotifier)
                                    .selectedDropDownValue = value;
                              });
                        }),
                        Container(
                            width: 135.h,
                            margin: EdgeInsets.only(left: 24.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 7.h, vertical: 1.v),
                            decoration: AppDecoration.fillBlueGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder3),
                            child: Text("msg_select_categories".tr,
                                style: CustomTextStyles.bodyMediumBlack900))
                      ]),
                      SizedBox(height: 9.v),
                      _buildExerciseList(context)
                    ]))));
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
  Widget _buildExerciseList(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 12.v);
          },
          itemCount: ref
                  .watch(routinePageNotifier)
                  .routinePageModelObj
                  ?.exerciselistItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            ExerciselistItemModel model = ref
                    .watch(routinePageNotifier)
                    .routinePageModelObj
                    ?.exerciselistItemList[index] ??
                ExerciselistItemModel();
            return ExerciselistItemWidget(model);
          });
    });
  }

  onTapHOME(BuildContext context) {
    // TODO: implement Actions
  }
}
