part of '../pages.dart';

class LencanaPage extends StatefulWidget {
  const LencanaPage({Key? key}) : super(key: key);

  @override
  State<LencanaPage> createState() => _LencanaPageState();
}

class _LencanaPageState extends State<LencanaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: black,
        ),
        backgroundColor: mainColor,
        title: const Text(lencana,
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
                Text(
                  "Total Hari Menahan Nafsu",
                  style: GoogleFonts.inter(
                    color: black,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(Assets.otakDay1),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "1 Hari",
                          style: GoogleFonts.poppins(
                            color: black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(Assets.otakDay3),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "3 Hari",
                          style: GoogleFonts.poppins(
                            color: black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(Assets.otakDay7),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "7 Hari",
                          style: GoogleFonts.poppins(
                            color: black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(Assets.otakDay15),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "15 Hari",
                          style: GoogleFonts.poppins(
                            color: black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(Assets.otakDay30),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "30 Hari",
                          style: GoogleFonts.poppins(
                            color: black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(Assets.otakDay90),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "90 Hari",
                          style: GoogleFonts.poppins(
                            color: black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
