part of '../pages.dart';

class DailyCheckPage3 extends StatefulWidget {
  const DailyCheckPage3({Key? key}) : super(key: key);

  @override
  State<DailyCheckPage3> createState() => _DailyCheckPage3State();
}

class _DailyCheckPage3State extends State<DailyCheckPage3> {
  @override
  Widget build(BuildContext context) {
    return CustomOptionPage(
        appBar: dailyCheck,
        title: "Orgasme",
        subtitle: "Apakah Anda berhasil untuk tidak\nOrgasme hari ini?",
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (c) => FinishDailyCheckPage()));
        });
  }
}
