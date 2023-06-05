part of 'widgets.dart';

class GenderSelection extends StatefulWidget {
  final int selectedGender;
  final void Function(int) onGenderSelected;

  GenderSelection(
      {required this.selectedGender, required this.onGenderSelected});

  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  late int _selectedGender;

  @override
  void initState() {
    super.initState();
    _selectedGender = widget.selectedGender;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: RadioListTile<int>(
            title: Text('Laki - Laki',
                style: GoogleFonts.poppins(fontWeight: FontWeight.w700)),
            value: 0,
            groupValue: _selectedGender,
            onChanged: (value) {
              setState(() {
                _selectedGender = value!;
                widget.onGenderSelected(_selectedGender);
              });
            },
          ),
        ),
        Expanded(
          child: RadioListTile<int>(
            title: Text('Perempuan',
                style: GoogleFonts.poppins(fontWeight: FontWeight.w700)),
            value: 1,
            groupValue: _selectedGender,
            onChanged: (value) {
              setState(() {
                _selectedGender = value!;
                widget.onGenderSelected(_selectedGender);
              });
            },
          ),
        ),
      ],
    );
  }
}
