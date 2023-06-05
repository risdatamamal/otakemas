part of 'pages.dart';

class SplashPage extends StatefulWidget {
  final SharedPreferences? prefs;

  const SplashPage({super.key, this.prefs});

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  initState() {
    super.initState();
    checkLoginStatus();
  }

  void checkLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    Timer(const Duration(seconds: 3), () async {
      if (isLoggedIn) {
        // Pengguna sudah login sebelumnya, arahkan ke halaman beranda atau halaman utama
        Navigator.pushReplacementNamed(context, homePage);
      } else {
        // Pengguna belum login sebelumnya, arahkan ke halaman login
        Navigator.pushReplacementNamed(context, loginPage);
      }
    });
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
