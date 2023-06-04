part of '../pages.dart';

class OnboardingPage extends StatefulWidget {
  final SharedPreferences? prefs;

  const OnboardingPage({Key? key, this.prefs}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late PageController _pageController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToNextPage() {
    if (_currentPageIndex < onboardings.length - 1) {
      _currentPageIndex++;
      _pageController.animateToPage(
        _currentPageIndex,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: white,
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: onboardings.length,
                  itemBuilder: (context, index) {
                    return OnboardingBodyPage(onboardings[index]);
                  },
                  onPageChanged: (index) {
                    setState(() {
                      _currentPageIndex = index;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: CustomElevatedButton(
                  textColor: black,
                  text: "Selanjutnya",
                  onPressed: _goToNextPage,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
