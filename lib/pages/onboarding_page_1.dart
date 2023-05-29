part of 'pages.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({Key? key}) : super(key: key);

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
                      Image.asset(Assets.onBoarding1, width: 245),
                      const SizedBox(
                        height: 20,
                      ),
                      Text("Selamat Datang",
                          style: GoogleFonts.poppins(
                              color: black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(width: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Di Aplikasi",
                              style: GoogleFonts.poppins(
                                  color: black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(width: 4),
                          Text("OtakEmas",
                              style: GoogleFonts.poppins(
                                  color: mainColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text("Asisten pribadi untuk membantu Anda berhenti dari kecanduan PMO (Pornografi,masturbasi,orgasm)",
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
                        Navigator.push(context, MaterialPageRoute(builder: (c) => OnboardingPage2()));
                      }),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
