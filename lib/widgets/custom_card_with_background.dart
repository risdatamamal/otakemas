part of 'widgets.dart';

class CustomCardWithBackground extends StatelessWidget {
  final Color color;
  final Color textColor;
  final void Function()? onPressed;
  final String title;
  final String subtitle;
  final String image;

  const CustomCardWithBackground(
      {super.key,
        this.color = white,
        required this.textColor,
        this.onPressed,
        required this.title,
        required this.subtitle,
        required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 3.0),
                        Text(
                          subtitle,
                          style: GoogleFonts.poppins(
                            color: Colors.black,
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
                      icon: Icon(Icons.arrow_forward_ios)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
