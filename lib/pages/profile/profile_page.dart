part of '../pages.dart';

class ProfilePage extends StatefulWidget {
  final User user;
  const ProfilePage({Key? key, required this.user}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: black,
        ),
        backgroundColor: mainColor,
        title: const Text(profile,
            style: TextStyle(
                fontSize: 24, color: black, fontWeight: FontWeight.w700)),
      ),
      body: Container(
        color: white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(Assets.otak),
                ),
                const SizedBox(height: 16),
                Text(
                  widget.user.name,
                  style: GoogleFonts.poppins(
                    color: black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Text(
                  widget.user.age,
                  style: GoogleFonts.poppins(
                    color: black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Text(
                  widget.user.gender,
                  style: GoogleFonts.poppins(
                    color: black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Statistik",
                      style: GoogleFonts.poppins(
                        color: mainColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CustomCardProfile(
                      icon: Assets.badgeCheck,
                      textColor: black,
                      title: "Waktu Tahan",
                      subtitle: "Terlama",
                      day: 12,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Riwayat",
                      style: GoogleFonts.poppins(
                        color: mainColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CustomCardProfile(
                      icon: Assets.history,
                      textColor: black,
                      title: "Riwayat Tersimpan",
                      onPressed: () {
                        User? user =
                            UserRepository(store: store).getUserById(1);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (c) => RiwayatPage(user: user!),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Lencana",
                      style: GoogleFonts.poppins(
                        color: mainColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CustomCardProfile(
                      icon: Assets.badgeCheck,
                      textColor: black,
                      title: "Progress Lencana",
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (c) => LencanaPage()));
                      },
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
