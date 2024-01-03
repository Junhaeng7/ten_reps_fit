import 'notifier/landingpage_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ten_reps/core/app_export.dart';
import 'package:ten_reps/widgets/custom_elevated_button.dart';
import 'package:ten_reps/widgets/custom_text_form_field.dart';

class LandingpageScreen extends ConsumerStatefulWidget {
  const LandingpageScreen({Key? key}) : super(key: key);

  @override
  LandingpageScreenState createState() => LandingpageScreenState();
}

class LandingpageScreenState extends ConsumerState<LandingpageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 109.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgFulllogoTransparentNobuffer,
                      height: 283.v,
                      width: 244.h),
                  SizedBox(height: 42.v),
                  _buildUsernameTextField(context),
                  SizedBox(height: 8.v),
                  _buildPasswordTextField(context),
                  SizedBox(height: 42.v),
                  CustomElevatedButton(
                      width: 247.h,
                      text: "lbl_login".tr,
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      onPressed: () {
                        onTapLOGIN(context);
                      }),
                  SizedBox(height: 27.v),
                  CustomElevatedButton(
                      width: 248.h,
                      text: "lbl_create_account".tr,
                      buttonStyle: CustomButtonStyles.fillGreenA,
                      onPressed: () {
                        onTapCreateAccount(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildUsernameTextField(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_username".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 5.v),
      Consumer(builder: (context, ref, _) {
        return CustomTextFormField(
            width: 248.h,
            controller: ref.watch(landingpageNotifier).userNameController);
      })
    ]);
  }

  /// Section Widget
  Widget _buildPasswordTextField(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_password".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 5.v),
      Consumer(builder: (context, ref, _) {
        return CustomTextFormField(
            width: 248.h,
            controller: ref.watch(landingpageNotifier).passwordController,
            textInputAction: TextInputAction.done,
            obscureText: true);
      })
    ]);
  }

  onTapLOGIN(BuildContext context) {
    // TODO: implement Actions
  }

  /// Navigates to the registerpageScreen when the action is triggered.
  onTapCreateAccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registerpageScreen,
    );
  }
}
