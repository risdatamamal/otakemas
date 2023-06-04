part of 'widgets.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final Color color;
  final String? hintText;
  final TextInputType textInputType;
  final TextInputFormatter filteringTextInputFormatter;

  const CustomTextFormField(
      {super.key,
      required this.controller,
      this.color = mainColor,
      this.hintText,
      required this.textInputType,
      required this.filteringTextInputFormatter});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: color,
      decoration: InputDecoration(
        hintText: hintText,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      keyboardType: textInputType,
      inputFormatters: <TextInputFormatter>[
        filteringTextInputFormatter,
      ],
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Harap isi kolom diatas';
        }
        return null;
      },
    );
  }
}
