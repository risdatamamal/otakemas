import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:OtakEmas/shared/shared.dart';
import 'package:OtakEmas/pages/pages.dart';
import 'package:OtakEmas/repositories/repositories.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'objectbox.g.dart';

late Store store;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  store = (await ObjectBox.create()).store;

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
        loginPage: (BuildContext context) => LoginPage(),
        onboardingPage: (BuildContext context) => OnboardingPage(),
        homePage: (BuildContext context) => HomePage(),
      },
      home: SplashPage(prefs: prefs),
    );
  }
}
