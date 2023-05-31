part of '../pages.dart';

class DailyCheckPage2 extends StatefulWidget {
  const DailyCheckPage2({Key? key}) : super(key: key);

  @override
  State<DailyCheckPage2> createState() => _DailyCheckPage2State();
}

class _DailyCheckPage2State extends State<DailyCheckPage2> {
  @override
  Widget build(BuildContext context) {
    return CustomOptionPage(
        appBar: dailyCheck,
        title: "Masturbasi",
        subtitle: "Apakah Anda berhasil untuk tidak\nMasturbasi hari ini?",
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (c) => DailyCheckPage3()));
        });
  }
}
