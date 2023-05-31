part of 'widgets.dart';

class CustomFinishPage extends StatefulWidget {
  final void Function()? onPressed;
  final String appBar;
  final String title;
  final String subtitle;
  final String? image;

  const CustomFinishPage(
      {super.key,
      this.onPressed,
      required this.appBar,
      required this.title,
      required this.subtitle,
      this.image});

  @override
  State<CustomFinishPage> createState() => _CustomFinishPageState();
}

class _CustomFinishPageState extends State<CustomFinishPage> {
  int _selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: black,
        ),
        automaticallyImplyLeading: false,
        backgroundColor: mainColor,
        title: Text(widget.appBar,
            style: const TextStyle(
                fontSize: 24, color: black, fontWeight: FontWeight.w700)),
      ),
      body: Container(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Assets.finish, width: 250),
            Column(
              children: [
                Text(
                  widget.title,
                  style: GoogleFonts.poppins(
                    color: black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  widget.subtitle,
                  style: GoogleFonts.poppins(
                    color: black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const SizedBox(
              height: 64,
            ),
            CustomElevatedButton(
              color: mainColor,
              textColor: black,
              text: "Selesai",
              onPressed: widget.onPressed,
            )
          ],
        ),
      ),
    );
  }
}
