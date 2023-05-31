part of '../pages.dart';

class DzikirPagiPage extends StatefulWidget {
  const DzikirPagiPage({Key? key}) : super(key: key);

  @override
  State<DzikirPagiPage> createState() => _DzikirPagiPageState();
}

class _DzikirPagiPageState extends State<DzikirPagiPage> {
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
    _currentPageIndex++;
    _pageController.animateToPage(
      _currentPageIndex,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _goToPreviousPage() {
    _currentPageIndex--;
    _pageController.animateToPage(
      _currentPageIndex,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: backgroundDzikirPagi,
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: dzikirPagiPages.length,
                  itemBuilder: (context, index) {
                    return DzikirPagiBodyPage(dzikirPagiPages[index]);
                  },
                  onPageChanged: (index) {
                    setState(() {
                      _currentPageIndex = index;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: _goToPreviousPage,
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: _goToNextPage,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
