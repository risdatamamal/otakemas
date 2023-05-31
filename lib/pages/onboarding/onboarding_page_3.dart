part of '../pages.dart';

class OnboardingPage3 extends StatelessWidget {
  final SharedPreferences? prefs;
  const OnboardingPage3({Key? key, this.prefs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: white,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(Assets.onBoarding3, width: 245),
                    const SizedBox(
                      height: 80,
                    ),
                    Text("Dorongan & Motivasi",
                        style: GoogleFonts.poppins(
                            color: black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 20,
                    ),
                    Text("Motivasi diri sendiri dengan melakukan hal-hal positif setiap hari",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal)),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
                Column(
                  children: [
                    CustomElevatedButton(textColor: black, text: "Next", onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) => HomePage()));
                    }),
                  ],
                ),
              ],
            ),
          )),
      ),
    );
  }
}
