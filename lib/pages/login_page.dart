part of 'pages.dart';

class LoginPage extends StatefulWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  void _showToast(String gender) {
    Fluttertoast.showToast(
      msg: 'Gender: $gender',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.grey[600],
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String selectedGender = '';
  final _formKey = GlobalKey<FormState>();

  void _login(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      UserRepository userRepository = UserRepository(store: store);

      User? user = userRepository.getUserByName(widget.nameController.text);

      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isLoggedIn', true);

      if (user == null) {
        int id = userRepository.addOrUpdateUser(
          User(
            name: widget.nameController.text,
            age: widget.ageController.text,
            gender: selectedGender,
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
                    onChanged: (value) {
                      if (value == 'Laki - Laki') {
                        widget._showToast('Laki - Laki');
                      } else if (value == 'Perempuan') {
                        widget._showToast('Perempuan');
                      }
                      setState(() {
                        selectedGender = value;
                      });
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
