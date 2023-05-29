part of 'pages.dart';

enum Gender { male, female }

class LoginPage extends StatelessWidget {
  final Function(Gender)? onGenderSelected;
  final Gender? selectedGender;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  LoginPage({Key? key, this.onGenderSelected, this.selectedGender}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
              padding: EdgeInsets.all(20),
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
                  const SizedBox(height: 20),
                  Text('Masukan Nama',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontStyle: FontStyle.normal)),
                  CustomTextField(controller: nameController, hintText: "Silahkan Masukan Nama Anda"),
                  const SizedBox(height: 20),
                  Text('Umur',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontStyle: FontStyle.normal)),
                  CustomTextField(controller: ageController, hintText: "Silahkan Masukan Umur Anda"),
                  const SizedBox(height: 20),
                  GenderSelection(
                    selectedGender: Gender.male,
                    onGenderSelected: (gender) {
                      // Handle the selected gender here
                      // print('Selected Gender: $gender');
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomElevatedButton(text: 'Login', textColor: black, onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (c) => OnboardingPage1()));
                  },)
                ],
              )),
        ],
      ),
    );
  }
}
