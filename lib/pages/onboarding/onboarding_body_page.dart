part of '../pages.dart';

class OnboardingBodyPage extends StatelessWidget {
  final OnboardingModel onboardingModel;

  OnboardingBodyPage(this.onboardingModel);

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
                      Image.asset(onboardingModel.image, width: 245),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(onboardingModel.title,
                              style: GoogleFonts.poppins(
                                  color: black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(width: 4),
                          if(onboardingModel.appname != null)
                            Text(
                              onboardingModel.appname!,
                              style: GoogleFonts.poppins(
                                  color: mainColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(onboardingModel.subtitle,
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
                ],
              )),
        ),
      ),
    );
  }
}
