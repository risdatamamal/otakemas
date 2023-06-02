part of '../pages.dart';

class RiwayatPage extends StatefulWidget {
  const RiwayatPage({Key? key}) : super(key: key);

  @override
  State<RiwayatPage> createState() => _RiwayatPageState();
}

class _RiwayatPageState extends State<RiwayatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: black,
        ),
        backgroundColor: mainColor,
        title: const Text(riwayat,
            style: TextStyle(
                fontSize: 24, color: black, fontWeight: FontWeight.w700)),
      ),
      body: Container(
        color: white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCardProfile(
                  icon: Assets.badgeCheck,
                  textColor: black,
                  title: "Menahan Nafsu",
                  subtitle: "Relapse",
                  day: 12,
                ),
                CustomCardProfile(
                  icon: Assets.badgeCheck,
                  textColor: black,
                  title: "Menahan Nafsu",
                  subtitle: "Relapse",
                  day: 1,
                ),
                CustomCardProfile(
                  icon: Assets.badgeCheck,
                  textColor: black,
                  title: "Menahan Nafsu",
                  subtitle: "Relapse",
                  day: 7,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
