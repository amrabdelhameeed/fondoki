import 'core/utils/app_strings.dart';

import '/core/constants/app_routes.dart';
import 'app_router.dart';
import 'core/constants/observer.dart';
import 'core/utils/dio_helper.dart';
import 'core/utils/shared_pref_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

String intialRoute = AppRoutes.auth;
void main() async {

  //hunter here
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  await SharedPrefHelper.init();
  // AppStrings.token = SharedPrefHelper.getData(key: AppStrings.tokenKey);
  // if (AppStrings.token!.isNotEmpty) {
  //   intialRoute = AppRoutes.home;
  // }
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.appRouter}) : super(key: key);
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      initialRoute: intialRoute,
      theme: ThemeData(primarySwatch: Colors.green),
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
