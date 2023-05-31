part of '../pages.dart';

class DzikirPetangBodyPage extends StatelessWidget {
  final DzikirPetangModel dzikirPetangModel;

  DzikirPetangBodyPage(this.dzikirPetangModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: black),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (c) => DzikirPage()));
          },
        ),
        backgroundColor: mainColor,
        title: const Text(dzikirPetang,
            style: TextStyle(
                fontSize: 24, color: black, fontWeight: FontWeight.w700)),
      ),
      body: Container(
        color: backgroundDzikirPetang,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  dzikirPetangModel.title,
                  style: GoogleFonts.poppins(
                    color: black,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              if(dzikirPetangModel.note != '')
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    dzikirPetangModel.note,
                    style: GoogleFonts.poppins(
                      color: black,
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  dzikirPetangModel.arabic,
                  style: GoogleFonts.poppins(
                    color: black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "*Artinya*",
                  style: GoogleFonts.poppins(
                    color: black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  dzikirPetangModel.artinya,
                  style: GoogleFonts.poppins(
                    color: black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
