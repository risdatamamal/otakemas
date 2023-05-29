part of 'pages.dart';

class IntroPage extends StatefulWidget {
  final SharedPreferences? prefs;

  final List<IntroModel> pages = [
    IntroModel(
        image: Image.asset(
          "assets/image/onboarding-1.png",
          scale: 1.2,
          alignment: Alignment.topLeft,
        ),
        title: "Let us take care of you",
        description:
        "We are here to take care of you with pleasure. besides that we will monitor your condition 24/Day"),
    IntroModel(
        image: Image.asset(
          "assets/image/onboarding-2.png",
          scale: 1.2,
          alignment: Alignment.topLeft,
        ),
        title: "Always use a mask",
        description:
        "always use a mask when you want to travel and keep your body immunity"),
    IntroModel(
        image: Image.asset(
          "assets/image/onboarding-3.png",
          scale: 1.2,
          alignment: Alignment.topLeft,
        ),
        title: "Work from home",
        description:
        "to avoid the spread of covid 19. you can do office work from home and always be close to your family"),
  ];

  IntroPage({Key? key, this.prefs}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
