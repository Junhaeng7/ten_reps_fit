import 'notifier/registerpage_notifier.dart';
import 'package:flutter/material.dart';
import 'package:ten_reps/core/app_export.dart';
import 'package:ten_reps/widgets/custom_outlined_button.dart';
import 'package:ten_reps/widgets/custom_text_form_field.dart';

class RegisterpageScreen extends ConsumerStatefulWidget {
  const RegisterpageScreen({Key? key}) : super(key: key);

  @override
  RegisterpageScreenState createState() => RegisterpageScreenState();
}

class RegisterpageScreenState extends ConsumerState<RegisterpageScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 95.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgFulllogoTransparentNobuffer,
                      height: 283.v,
                      width: 244.h),
                  SizedBox(height: 21.v),
                  Text("lbl_create_account".tr,
                      style: CustomTextStyles.headlineSmallRobotoBlack900),
                  SizedBox(height: 35.v),
                  _buildUsernameFrame(context),
                  SizedBox(height: 8.v),
                  _buildPasswordFrame(context),
                  SizedBox(height: 8.v),
                  _buildRePasswordFrame(context),
                  SizedBox(height: 35.v),
                  CustomOutlinedButton(
                      width: 247.h,
                      text: "lbl_finish".tr,
                      onPressed: () {
                        onTapFinish(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildUsernameFrame(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_username".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 2.v),
      Consumer(builder: (context, ref, _) {
        return CustomTextFormField(
            width: 248.h,
            controller: ref.watch(registerpageNotifier).userNameController);
      })
    ]);
  }

  /// Section Widget
  Widget _buildPasswordFrame(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_password".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 5.v),
      Consumer(builder: (context, ref, _) {
        return CustomTextFormField(
            width: 248.h,
            controller: ref.watch(registerpageNotifier).passwordController,
            obscureText: true);
      })
    ]);
  }

  /// Section Widget
  Widget _buildRePasswordFrame(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("msg_re_enter_password".tr, style: theme.textTheme.bodySmall),
      SizedBox(height: 5.v),
      Consumer(builder: (context, ref, _) {
        return CustomTextFormField(
            width: 248.h,
            controller: ref.watch(registerpageNotifier).passwordController1,
            textInputAction: TextInputAction.done,
            obscureText: true);
      })
    ]);
  }

  onTapFinish(BuildContext context) {
    // TODO: implement Actions
  }
}
