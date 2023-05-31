part of '../pages.dart';

class DzikirPetangPage extends StatefulWidget {
  const DzikirPetangPage({Key? key}) : super(key: key);

  @override
  State<DzikirPetangPage> createState() => _DzikirPetangPageState();
}

class _DzikirPetangPageState extends State<DzikirPetangPage> {
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
          color: backgroundDzikirPetang,
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: dzikirPetangPages.length,
                  itemBuilder: (context, index) {
                    return DzikirPetangBodyPage(dzikirPetangPages[index]);
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
