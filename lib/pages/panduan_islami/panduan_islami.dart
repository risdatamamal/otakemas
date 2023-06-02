part of '../pages.dart';

class PanduanIslamiPage extends StatefulWidget {
  const PanduanIslamiPage({Key? key}) : super(key: key);

  @override
  State<PanduanIslamiPage> createState() => _PanduanIslamiPageState();
}

class _PanduanIslamiPageState extends State<PanduanIslamiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: black,
        ),
        backgroundColor: mainColor,
        title: const Text(panduanIslami,
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
                CustomCard(
                  textColor: black,
                  title: ceramah,
                  subtitle:
                  "Berisi Mengenai Video - Video\nCeramah tentang bahaya PMO",
                  image: Assets.panduanIslami,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (c) => CeramahVideoListPage()));
                  },
                ),
                CustomCard(
                  textColor: black,
                  title: kalenderPuasa,
                  subtitle:
                  "Untuk Melihat Jadwal Puasa di\nHari - Hari Yang ditentukan Islam",
                  image: Assets.kalenderPuasa,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (c) => KalenderPuasaPage()));
                  },
                ),
                CustomCard(
                  textColor: black,
                  title: dzikir,
                  subtitle: "Bekali Dirimu Dengan Kumpulan\nDzikir Pagi dan Petang",
                  image: Assets.dzikir,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (c) => DzikirPage()));
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
