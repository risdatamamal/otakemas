part of 'widgets.dart';

class CustomCard extends StatelessWidget {
  final Color color;
  final Color textColor;
  final void Function()? onPressed;
  final String title;
  final String subtitle;
  final String? image;
  final String? icon;

  const CustomCard(
      {super.key,
      this.color = white,
      required this.textColor,
      this.onPressed,
      required this.title,
      required this.subtitle,
      this.image,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            10), // Adjust the radius value to control the roundness
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                if (image != null)
                  Container(
                    width: 70,
                    height: 70,
                    margin: const EdgeInsets.only(right: 8),
                    child: Image.asset(image!),
                  ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.poppins(
                          color: black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 3.0),
                      Text(
                        subtitle,
                        style: GoogleFonts.poppins(
                          color: black,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8.0),
                IconButton(
                    onPressed: onPressed,
                    icon: const Icon(Icons.arrow_forward_ios)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
