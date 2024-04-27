import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/common/view/colors.dart';

import 'app.dart';
import 'common/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  Bloc.observer = const AppBlocObserver();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AppColors.secondary,
    statusBarIconBrightness: Brightness.light,
  ));

  runApp(const MainApp());
}
