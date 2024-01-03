import '../models/exerciselist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ten_reps/core/app_export.dart';

// ignore: must_be_immutable
class Exerciselist1ItemWidget extends StatelessWidget {
  Exerciselist1ItemWidget(
    this.exerciselist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Exerciselist1ItemModel exerciselist1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 17.h,
          vertical: 8.v,
        ),
        decoration: AppDecoration.fillOnPrimaryContainer,
        child: Row(
          children: [
            CustomImageView(
              imagePath: exerciselist1ItemModelObj?.backSquatImage,
              height: 68.v,
              width: 80.h,
              radius: BorderRadius.circular(
                10.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 25.h,
                top: 23.v,
                bottom: 20.v,
              ),
              child: Text(
                exerciselist1ItemModelObj.backSquatText!,
                style: theme.textTheme.titleLarge,
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: exerciselist1ItemModelObj?.bookmarkImage,
              height: 21.v,
              width: 13.h,
              margin: EdgeInsets.only(
                top: 23.v,
                right: 24.h,
                bottom: 20.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
