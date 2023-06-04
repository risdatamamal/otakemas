part of 'pages.dart';

enum Gender { male, female }

class LoginPage extends StatefulWidget {
  final Function(Gender)? onGenderSelected;
  final Gender? selectedGender;
  final SharedPreferences? prefs;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  void _showToast(String gender) {
    Fluttertoast.showToast(
      msg: 'Selected Gender: $gender',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.grey[600],
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  LoginPage(
      {super.key, this.onGenderSelected, this.selectedGender, this.prefs});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  void _login() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (c) => OnboardingPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      Assets.logoOnly,
                      width: 125,
                      height: 125,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Image.asset(
                      Assets.title,
                      width: 245,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text('Masukan Nama',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal)),
                  const SizedBox(height: 8),
                  CustomTextFormField(
                    controller: widget.nameController,
                    hintText: "Silahkan Masukan Nama Anda",
                    textInputType: TextInputType.text,
                    filteringTextInputFormatter:
                        FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]')),
                  ),
                  const SizedBox(height: 20),
                  Text('Umur',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal)),
                  const SizedBox(height: 8),
                  CustomTextFormField(
                    controller: widget.ageController,
                    hintText: "Silahkan Masukan Umur Anda",
                    textInputType: TextInputType.number,
                    filteringTextInputFormatter:
                        FilteringTextInputFormatter.digitsOnly,
                  ),
                  const SizedBox(height: 20),
                  GenderSelection(
                    selectedGender: Gender.male,
                    onGenderSelected: (gender) {
                      widget._showToast(gender.toString());
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomElevatedButton(
                    text: 'Login',
                    textColor: black,
                    onPressed: () {
                      _login();
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
