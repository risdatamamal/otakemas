part of '../../../pages.dart';

class DzikirPagiBodyPage extends StatelessWidget {
  final DzikirPagiModel dzikirPagiModel;

  DzikirPagiBodyPage(this.dzikirPagiModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: black),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (c) => DzikirPage()));
          },
        ),
        backgroundColor: mainColor,
        title: const Text(dzikirPagi,
            style: TextStyle(
                fontSize: 24, color: black, fontWeight: FontWeight.w700)),
      ),
      body: Container(
        color: backgroundDzikirPagi,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      dzikirPagiModel.title,
                      style: GoogleFonts.poppins(
                        color: black,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  if (dzikirPagiModel.note != '')
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        dzikirPagiModel.note,
                        style: GoogleFonts.poppins(
                          color: black,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  dzikirPagiModel.arabic,
                  style: GoogleFonts.poppins(
                    color: black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Column(
                children: [
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
                      dzikirPagiModel.artinya,
                      style: GoogleFonts.poppins(
                        color: black,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
