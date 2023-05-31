part of '../pages.dart';

class MotivasiBodyPage extends StatelessWidget {
  final MotivasiModel motivasiModel;

  MotivasiBodyPage(this.motivasiModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: black),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (c) => HomePage()));
          },
        ),
        backgroundColor: mainColor,
        title: const Text(motivasi,
            style: TextStyle(
                fontSize: 24, color: black, fontWeight: FontWeight.w700)),
      ),
      body: Container(
        color: white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(Assets.motivasi, width: 250),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  motivasiModel.title,
                  style: GoogleFonts.poppins(
                    color: black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
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
