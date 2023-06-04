import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:OtakEmas/shared/shared.dart';
import 'package:OtakEmas/pages/pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.getInstance().then((prefs) {
    runApp(MyApp(prefs: prefs));
  });
}

class MyApp extends StatelessWidget {
  final SharedPreferences prefs;

  const MyApp({super.key, required this.prefs});

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
        loginPage: (BuildContext context) => LoginPage(prefs: prefs),
        onboardingPage: (BuildContext context) => OnboardingPage(prefs: prefs),
        homePage: (BuildContext context) => HomePage(),
      },
      home: handleCurrentScreen(),
    );
  }

  Widget handleCurrentScreen() {
    bool seen = (prefs.getBool('seen') ?? false);
    if (seen) {
      return new HomePage();
    } else {
      return new SplashPage(prefs: prefs);
    }
    // return new SplashPage(prefs: prefs);
  }
}
