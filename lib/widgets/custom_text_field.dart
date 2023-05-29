part of 'widgets.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final Color color;
  final String? hintText;

  const CustomTextField(
      {super.key, required this.controller, this.color = mainColor, this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: color,
      decoration: InputDecoration(
        hintText: hintText,
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: color)),
      ),
    );
  }
}
