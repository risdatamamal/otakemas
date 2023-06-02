part of 'widgets.dart';

class CustomCardProfile extends StatelessWidget {
  final Color color;
  final Color textColor;
  final void Function()? onPressed;
  final String title;
  final int? day;
  final String? subtitle;
  final String icon;

  const CustomCardProfile(
      {super.key,
      this.color = white,
      required this.textColor,
      this.onPressed,
      required this.title,
      this.subtitle,
      required this.icon,
      this.day});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            10), // Adjust the radius value to control the roundness
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                  child: Image.asset(icon),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.poppins(
                          color: black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 3.0),
                      if (subtitle != null)
                        Text(
                          subtitle!,
                          style: GoogleFonts.poppins(
                            color: black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(width: 8.0),
                if (onPressed != null)
                  IconButton(
                    onPressed: onPressed,
                    icon: const Icon(Icons.arrow_forward_ios),
                  ),
                if (day != null)
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Text(
                          day.toString(),
                          style: GoogleFonts.inter(
                            color: mainColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        Text(
                          "Hari",
                          style: GoogleFonts.inter(
                            color: mainColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
