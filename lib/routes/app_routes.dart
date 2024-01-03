import 'package:flutter/material.dart';
import 'package:ten_reps/presentation/landingpage_screen/landingpage_screen.dart';
import 'package:ten_reps/presentation/registerpage_screen/registerpage_screen.dart';
import 'package:ten_reps/presentation/analysis_page_screen/analysis_page_screen.dart';
import 'package:ten_reps/presentation/adding_exercise_screen/adding_exercise_screen.dart';
import 'package:ten_reps/presentation/date_records_screen/date_records_screen.dart';
import 'package:ten_reps/presentation/piazza_screen/piazza_screen.dart';
import 'package:ten_reps/presentation/routine_page_screen/routine_page_screen.dart';
import 'package:ten_reps/presentation/exercise_library_screen/exercise_library_screen.dart';
import 'package:ten_reps/presentation/today_workout_screen/today_workout_screen.dart';
import 'package:ten_reps/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String landingpageScreen = '/landingpage_screen';

  static const String registerpageScreen = '/registerpage_screen';

  static const String homepagePage = '/homepage_page';

  static const String analysisPageScreen = '/analysis_page_screen';

  static const String addingExerciseScreen = '/adding_exercise_screen';

  static const String dateRecordsScreen = '/date_records_screen';

  static const String piazzaScreen = '/piazza_screen';

  static const String routinePageScreen = '/routine_page_screen';

  static const String exerciseLibraryScreen = '/exercise_library_screen';

  static const String todayWorkoutScreen = '/today_workout_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    landingpageScreen: (context) => LandingpageScreen(),
    registerpageScreen: (context) => RegisterpageScreen(),
    analysisPageScreen: (context) => AnalysisPageScreen(),
    addingExerciseScreen: (context) => AddingExerciseScreen(),
    dateRecordsScreen: (context) => DateRecordsScreen(),
    piazzaScreen: (context) => PiazzaScreen(),
    routinePageScreen: (context) => RoutinePageScreen(),
    exerciseLibraryScreen: (context) => ExerciseLibraryScreen(),
    todayWorkoutScreen: (context) => TodayWorkoutScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => LandingpageScreen(),
  };
}
