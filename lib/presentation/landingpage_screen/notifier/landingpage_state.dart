// ignore_for_file: must_be_immutable

part of 'landingpage_notifier.dart';

/// Represents the state of Landingpage in the application.
class LandingpageState extends Equatable {
  LandingpageState({
    this.userNameController,
    this.passwordController,
    this.landingpageModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? passwordController;

  LandingpageModel? landingpageModelObj;

  @override
  List<Object?> get props => [
        userNameController,
        passwordController,
        landingpageModelObj,
      ];

  LandingpageState copyWith({
    TextEditingController? userNameController,
    TextEditingController? passwordController,
    LandingpageModel? landingpageModelObj,
  }) {
    return LandingpageState(
      userNameController: userNameController ?? this.userNameController,
      passwordController: passwordController ?? this.passwordController,
      landingpageModelObj: landingpageModelObj ?? this.landingpageModelObj,
    );
  }
}
