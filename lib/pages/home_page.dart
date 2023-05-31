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
        title: const Text("OtakEmas",
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      margin: EdgeInsets.only(left: 10, right: 20),
                      child: GestureDetector(
                        onTap: () {
                          print('Avatar clicked!');
                        },
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(Assets.otak),
                        ),
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
                const SizedBox(height: 16.0),
                Text("Support System",
                    style: GoogleFonts.poppins(
                        color: black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 8.0),
                CustomCard(
                  textColor: black,
                  title: dailyCheck,
                  subtitle:
                      "Pengecekan harian kejujuran\nanda dalam menahan nafsu\nPMO",
                  image: Assets.dailyTask,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (c) => DailyCheckPage1()));
                  },
                ),
                CustomCard(
                  textColor: black,
                  title: panduanIslami,
                  subtitle:
                      "Kegiatan - kegiatan positif\ndengan cara islam untuk anda",
                  image: Assets.panduanIslami,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (c) => PanduanIslamiPage()));
                  },
                ),
                CustomCard(
                  textColor: black,
                  title: motivasi,
                  subtitle: "Pemberi Dorongan dan\nMasukan Positif untuk Anda",
                  image: Assets.motivasi,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (c) => MotivasiPage()));
                  },
                ),
                CustomCard(
                  textColor: black,
                  title: workout,
                  subtitle:
                      "Aktivitas Memelihara Kesehatan\ndan Kebugaran Tubuh Anda",
                  image: Assets.workout,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (c) => WorkoutPage1()));
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
