part of 'widgets.dart';

class GenderSelection extends StatefulWidget {
  final ValueSetter<String> onChanged;

  const GenderSelection({super.key, required this.onChanged});

  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  String selectedGender = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile<String>(
          title: Text('Laki - Laki',
              style: GoogleFonts.poppins(fontWeight: FontWeight.w700)),
          value: 'Laki - Laki',
          groupValue: selectedGender,
          onChanged: (value) {
            setState(() {
              selectedGender = value!;
            });
            widget.onChanged(value!);
          },
        ),
        RadioListTile<String>(
          title: Text('Perempuan',
              style: GoogleFonts.poppins(fontWeight: FontWeight.w700)),
          value: 'Perempuan',
          groupValue: selectedGender,
          onChanged: (value) {
            setState(() {
              selectedGender = value!;
            });
            widget.onChanged(value!);
          },
        ),
      ],
    );
  }
}
