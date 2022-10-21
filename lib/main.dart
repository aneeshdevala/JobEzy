import 'package:flutter/material.dart';
import 'package:jobizy/app/controller/bottomnavcon.dart';
import 'package:jobizy/app/controller/homescreen/homescreen.dart';
import 'package:jobizy/app/controller/logincontroller.dart';
import 'package:jobizy/app/controller/signupcontroller.dart';
import 'package:jobizy/app/util/route.dart';
import 'package:jobizy/app/view/splashacreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SplashProvider(context)),
        ChangeNotifierProvider(create: (_) => HomeController()),
        ChangeNotifierProvider(create: (_) => SigninController()),
        ChangeNotifierProvider(create: (_) => SignupController()),
        ChangeNotifierProvider(create: (_) => BottomNavBarController()),
      ],
      child: MaterialApp(
        navigatorKey: RouteNavigator.navigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'JobEzy',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ScreenSplash(),
      ),
    );
  }
}
