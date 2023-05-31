part of 'widgets.dart';

class CustomOptionPage extends StatefulWidget {
  final void Function()? onPressed;
  final String appBar;
  final String title;
  final String subtitle;
  final String? image;

  const CustomOptionPage(
      {super.key,
      this.onPressed,
      required this.appBar,
      required this.title,
      required this.subtitle,
      this.image});

  @override
  State<CustomOptionPage> createState() => _CustomOptionPageState();
}

class _CustomOptionPageState extends State<CustomOptionPage> {
  int _selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: black,
        ),
        backgroundColor: mainColor,
        title: Text(widget.appBar,
            style: const TextStyle(
                fontSize: 24, color: black, fontWeight: FontWeight.w700)),
      ),
      body: Container(
        color: white,
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (widget.image != null)
              Image.asset(widget.image ?? '', width: 250),
            Column(
              children: [
                Text(
                  widget.title,
                  style: GoogleFonts.poppins(
                    color: mainColor,
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
            Row(
              children: [
                Expanded(
                    child: InkWell(
                  onTap: () {
                    setState(() {
                      _selectedOption = 1;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 24.0, horizontal: 16.0),
                    margin: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: _selectedOption == 1 ? darkButtonYes : green,
                    ),
                    child: const Text(
                      'Ya',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    setState(() {
                      _selectedOption = 2;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 24.0, horizontal: 16.0),
                    margin: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: _selectedOption == 2 ? darkButtonNo : red,
                    ),
                    child: const Text(
                      'Tidak',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )),
              ],
            ),
            CustomElevatedButton(
                color: _selectedOption == 0 ? lightButtonNext : mainColor,
                textColor: black,
                text: "Next",
                onPressed: _selectedOption != 0 ? widget.onPressed : () {})
          ],
        ),
      ),
    );
  }
}
