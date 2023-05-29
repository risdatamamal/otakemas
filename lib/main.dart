import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:otakemas/shared/shared.dart';
import 'package:otakemas/pages/pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.getInstance().then((prefs) {
    runApp(MyApp(prefs: prefs));
  });
}

class MyApp extends StatelessWidget {
  final SharedPreferences prefs;
  MyApp({required this.prefs});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "OtakEmas",
      theme: ThemeData(primaryColor: white),
      routes: <String, WidgetBuilder>{
        splashPage: (BuildContext context) => SplashPage(prefs: prefs),
        loginPage: (BuildContext context) => LoginPage(),
        onboardingPage1: (BuildContext context) => OnboardingPage1(),
        onboardingPage2: (BuildContext context) => OnboardingPage2(),
        onboardingPage3: (BuildContext context) => OnboardingPage3(),
        homePage: (BuildContext context) => HomePage(),
      },
      home: handleCurrentScreen(),
    );
  }

  Widget handleCurrentScreen() {
    bool seen = (prefs.getBool('seen') ?? false);
    // if (seen) {
    //   return new LoginPage();
    // } else {
    //   return new SplashPage(prefs: prefs);
    // }
    return new SplashPage(prefs: prefs);
  }
}
