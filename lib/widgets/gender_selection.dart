part of 'widgets.dart';

class GenderSelection extends StatefulWidget {
  final Gender selectedGender;
  final void Function(Gender) onGenderSelected;

  GenderSelection({required this.selectedGender, required this.onGenderSelected});

  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  late Gender _selectedGender;

  @override
  void initState() {
    super.initState();
    _selectedGender = widget.selectedGender;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile<Gender>(
          title: Text('Male', style: GoogleFonts.poppins(fontWeight: FontWeight.w700)),
          value: Gender.male,
          groupValue: _selectedGender,
          onChanged: (value) {
            setState(() {
              _selectedGender = value!;
              widget.onGenderSelected(_selectedGender);
            });
          },
        ),
        RadioListTile<Gender>(
          title: Text('Female', style: GoogleFonts.poppins(fontWeight: FontWeight.w700)),
          value: Gender.female,
          groupValue: _selectedGender,
          onChanged: (value) {
            setState(() {
              _selectedGender = value!;
              widget.onGenderSelected(_selectedGender);
            });
          },
        ),
      ],
    );
  }
}