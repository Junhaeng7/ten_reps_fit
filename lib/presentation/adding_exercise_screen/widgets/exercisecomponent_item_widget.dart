import '../models/exercisecomponent_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ten_reps/core/app_export.dart';

// ignore: must_be_immutable
class ExercisecomponentItemWidget extends StatelessWidget {
  ExercisecomponentItemWidget(
    this.exercisecomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ExercisecomponentItemModel exercisecomponentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 8.v,
        ),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 15.v,
              width: 17.h,
              margin: EdgeInsets.only(
                top: 26.v,
                bottom: 27.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.blueGray100,
              ),
            ),
            CustomImageView(
              imagePath: exercisecomponentItemModelObj?.exerciseImage,
              height: 68.v,
              width: 80.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              margin: EdgeInsets.only(left: 15.h),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24.h,
                top: 23.v,
                bottom: 20.v,
              ),
              child: Text(
                exercisecomponentItemModelObj.exerciseName!,
                style: theme.textTheme.titleLarge,
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: exercisecomponentItemModelObj?.bookmarkImage,
              height: 21.v,
              width: 13.h,
              margin: EdgeInsets.only(
                top: 25.v,
                bottom: 22.v,
              ),
            ),
            Container(
              height: 24.v,
              width: 20.h,
              margin: EdgeInsets.fromLTRB(8.h, 22.v, 1.h, 22.v),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.blueGray100,
                        borderRadius: BorderRadius.circular(
                          10.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        exercisecomponentItemModelObj.infoText!,
                        style: CustomTextStyles.titleLargeBlack900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
