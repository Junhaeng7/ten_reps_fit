// ignore_for_file: must_be_immutable

part of 'registerpage_notifier.dart';

/// Represents the state of Registerpage in the application.
class RegisterpageState extends Equatable {
  RegisterpageState({
    this.userNameController,
    this.passwordController,
    this.passwordController1,
    this.registerpageModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? passwordController;

  TextEditingController? passwordController1;

  RegisterpageModel? registerpageModelObj;

  @override
  List<Object?> get props => [
        userNameController,
        passwordController,
        passwordController1,
        registerpageModelObj,
      ];

  RegisterpageState copyWith({
    TextEditingController? userNameController,
    TextEditingController? passwordController,
    TextEditingController? passwordController1,
    RegisterpageModel? registerpageModelObj,
  }) {
    return RegisterpageState(
      userNameController: userNameController ?? this.userNameController,
      passwordController: passwordController ?? this.passwordController,
      passwordController1: passwordController1 ?? this.passwordController1,
      registerpageModelObj: registerpageModelObj ?? this.registerpageModelObj,
    );
  }
}
