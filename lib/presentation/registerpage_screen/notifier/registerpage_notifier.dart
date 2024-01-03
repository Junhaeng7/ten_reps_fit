import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ten_reps/presentation/registerpage_screen/models/registerpage_model.dart';
part 'registerpage_state.dart';

final registerpageNotifier =
    StateNotifierProvider<RegisterpageNotifier, RegisterpageState>((ref) =>
        RegisterpageNotifier(RegisterpageState(
            userNameController: TextEditingController(),
            passwordController: TextEditingController(),
            passwordController1: TextEditingController(),
            registerpageModelObj: RegisterpageModel())));

/// A notifier that manages the state of a Registerpage according to the event that is dispatched to it.
class RegisterpageNotifier extends StateNotifier<RegisterpageState> {
  RegisterpageNotifier(RegisterpageState state) : super(state);
}
