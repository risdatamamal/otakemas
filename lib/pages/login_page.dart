part of 'pages.dart';

class LoginPage extends StatefulWidget {
  final Function(int)? onGenderSelected;
  final int? selectedGender;

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

  LoginPage({super.key, this.onGenderSelected, this.selectedGender});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  void _login(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      UserRepository userRepository = UserRepository(store: store);

      User? user = userRepository.getUserByName(widget.nameController.text);

      // var name = widget.nameController.text;
      // var age = widget.ageController.text;
      // var gender = widget.selectedGender.toString();

      // print(name);
      // print(age);
      // print(gender);

      // Setelah login berhasil
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isLoggedIn', true);

      if (user == null) {
        int id = userRepository.addOrUpdateUser(
          User(
            name: widget.nameController.text,
            age: widget.ageController.text,
            gender: widget.selectedGender.toString(),
          ),
        );

        user = userRepository.getUserById(id);
      }

      if (user != null) {
        Navigator.pushReplacementNamed(context, onboardingPage);
      } else {
        Navigator.pushReplacementNamed(context, homePage);
      }
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
                        FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z ]')),
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
                    selectedGender: widget.selectedGender ?? 0,
                    onGenderSelected: (gender) {
                      // Change value widget.selectedGender == 0 to widget.selectedGender == "Laki - Laki"
                      // Change value widget.selectedGender == 1 to widget.selectedGender == "Perempuan"
                      if (widget.selectedGender == 0) {
                        widget._showToast('Laki - Laki');
                      } else if (widget.selectedGender == 1) {
                        widget._showToast('Perempuan');
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomElevatedButton(
                    text: 'Login',
                    textColor: black,
                    onPressed: () {
                      _login(context);
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
