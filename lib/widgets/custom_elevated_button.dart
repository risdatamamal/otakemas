part of 'widgets.dart';

class CustomElevatedButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final double width;
  final double? height;
  final double? fontSize;
  final FontWeight fontWeight;
  final void Function()? onPressed;
  final String text;

  const CustomElevatedButton(
      {super.key,
      this.color = mainColor,
      required this.textColor,
      this.width = double.infinity,
      this.height,
      this.fontSize,
      this.fontWeight = FontWeight.w600,
      this.onPressed,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 52,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
          ),
          child: Text(
            text,
            style: GoogleFonts.poppins(
                color: textColor, fontSize: fontSize, fontWeight: fontWeight),
          )),
    );
  }
}
