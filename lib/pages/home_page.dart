part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: mainColor,
        title: const Text("Otak Emas",
            style: TextStyle(fontSize: 24, color: black)),
      ),
      body: Container(
        color: white,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      margin: EdgeInsets.only(left: 10, right: 20),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(Assets.otak),
                      ),
                    ),
                    Text(
                        "Saya Berkomitmen Untuk keluar \ndari kecanduan PMO \n(Pornography, Masturbasi, Orgasme)",
                        style: GoogleFonts.poppins(
                            color: black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
