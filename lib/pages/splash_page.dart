part of 'pages.dart';

class SplashPage extends StatefulWidget {
  final SharedPreferences? prefs;

  const SplashPage({super.key, this.prefs});

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  startTime() {
    Timer(const Duration(seconds: 3), () async {
      //  Send user to Login Screen
      Navigator.push(context, MaterialPageRoute(builder: (c) => LoginPage()));
    });
  }

  @override
  initState() {
    super.initState();

    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: splashColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.logo)
          ],
        ),
      ),
    );
  }
}
