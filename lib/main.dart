import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:window_meas/common/service_locator.dart';
import 'package:window_meas/common/view/colors.dart';
import 'package:firebase_core/firebase_core.dart';

import 'app.dart';
import 'common/bloc_observer.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  Bloc.observer = const AppBlocObserver();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: AppColors.secondary,
    statusBarIconBrightness: Brightness.light,
  ));

  runApp(const MainApp());
}
