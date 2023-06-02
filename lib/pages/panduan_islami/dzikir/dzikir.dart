part of '../../pages.dart';

class DzikirPage extends StatefulWidget {
  const DzikirPage({Key? key}) : super(key: key);

  @override
  State<DzikirPage> createState() => _DzikirPageState();
}

class _DzikirPageState extends State<DzikirPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: black),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (c) => HomePage()));
          },
        ),
        iconTheme: const IconThemeData(
          color: black,
        ),
        backgroundColor: mainColor,
        title: const Text(dzikir,
            style: TextStyle(
                fontSize: 24, color: black, fontWeight: FontWeight.w700)),
      ),
      body: Container(
        color: white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCardWithBackground(
                    textColor: black,
                    title: "Dzikir Pagi",
                    subtitle: "Kumpulan Dzikir - Dzikir Pagi",
                    image: Assets.dzikirPagi,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DzikirPagiPage()),
                      );
                    },
                ),
                const SizedBox(height: 16.0),
                CustomCardWithBackground(
                  textColor: black,
                  title: "Dzikir Petang",
                  subtitle: "Kumpulan Dzikir - Dzikir Petang",
                  image: Assets.dzikirPetang,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DzikirPetangPage()),
                      );
                    },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
