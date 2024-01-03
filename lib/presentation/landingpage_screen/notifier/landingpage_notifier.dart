import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ten_reps/presentation/landingpage_screen/models/landingpage_model.dart';
part 'landingpage_state.dart';

final landingpageNotifier =
    StateNotifierProvider<LandingpageNotifier, LandingpageState>((ref) =>
        LandingpageNotifier(LandingpageState(
            userNameController: TextEditingController(),
            passwordController: TextEditingController(),
            landingpageModelObj: LandingpageModel())));

/// A notifier that manages the state of a Landingpage according to the event that is dispatched to it.
class LandingpageNotifier extends StateNotifier<LandingpageState> {
  LandingpageNotifier(LandingpageState state) : super(state);
}
