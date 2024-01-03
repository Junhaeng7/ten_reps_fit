import '../models/exerciselist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ten_reps/core/app_export.dart';

// ignore: must_be_immutable
class ExerciselistItemWidget extends StatelessWidget {
  ExerciselistItemWidget(
    this.exerciselistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ExerciselistItemModel exerciselistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        exerciselistItemModelObj.backRoutineText!,
                        style: theme.textTheme.headlineLarge,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16.h,
                          top: 15.v,
                          bottom: 5.v,
                        ),
                        child: Text(
                          exerciselistItemModelObj.byHellaText!,
                          style: CustomTextStyles.bodyMediumRoboto,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.v),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text(
                          exerciselistItemModelObj.numOfWorkoutText!,
                          style: CustomTextStyles.bodyMediumRoboto,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 13.h),
                        child: Text(
                          exerciselistItemModelObj.totalRepsText!,
                          style: CustomTextStyles.bodyMediumRoboto,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: exerciselistItemModelObj?.bookmarkImage,
            height: 21.v,
            width: 12.h,
            margin: EdgeInsets.only(
              left: 44.h,
              top: 21.v,
              bottom: 18.v,
            ),
          ),
        ],
      ),
    );
  }
}
