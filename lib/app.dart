import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shop_sprints/screens/auth/sign_in_screen.dart';
import 'package:shop_sprints/screens/auth/sign_up_screen.dart';
import 'package:shop_sprints/screens/home/home_screen.dart';
import 'package:shop_sprints/screens/welcome/welcomeScreen.dart';
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        WelcomeScreen.routeName:(context)=>WelcomeScreen(),
        SignInScreen.routeName:(context)=>SignInScreen(),
        SignUpScreen.routeName:(context)=>SignUpScreen(),
        HomeScreen.routeName:(context)=>HomeScreen(),
      },
      initialRoute: WelcomeScreen.routeName,
      title: 'Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Suwannaphum',
      ),
      home: WelcomeScreen(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
     );
  }
}
