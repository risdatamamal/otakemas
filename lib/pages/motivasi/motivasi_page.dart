part of '../pages.dart';

class MotivasiPage extends StatefulWidget {
  const MotivasiPage({Key? key}) : super(key: key);

  @override
  State<MotivasiPage> createState() => _MotivasiPageState();
}

class _MotivasiPageState extends State<MotivasiPage> {
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
    if (_currentPageIndex < motivasion.length - 1) {
      _currentPageIndex++;
      _pageController.animateToPage(
        _currentPageIndex,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Navigasi ke halaman lain
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => FinishMotivasiPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: white,
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: motivasion.length,
                  itemBuilder: (context, index) {
                    return MotivasiBodyPage(motivasion[index]);
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
