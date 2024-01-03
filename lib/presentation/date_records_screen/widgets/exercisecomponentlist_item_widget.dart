import '../models/exercisecomponentlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ten_reps/core/app_export.dart';

// ignore: must_be_immutable
class ExercisecomponentlistItemWidget extends StatelessWidget {
  ExercisecomponentlistItemWidget(
    this.exercisecomponentlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ExercisecomponentlistItemModel exercisecomponentlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: exercisecomponentlistItemModelObj?.exerciseImage,
            height: 68.v,
            width: 76.h,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 21.h,
              top: 23.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  exercisecomponentlistItemModelObj.exerciseName!,
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(
                  width: 128.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        exercisecomponentlistItemModelObj.weightText!,
                        style: theme.textTheme.titleSmall,
                      ),
                      Text(
                        exercisecomponentlistItemModelObj.timeText!,
                        style: theme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: exercisecomponentlistItemModelObj?.bookmarkImage,
            height: 21.v,
            width: 13.h,
            margin: EdgeInsets.only(
              top: 23.v,
              right: 23.h,
              bottom: 22.v,
            ),
          ),
        ],
      ),
    );
  }
}
