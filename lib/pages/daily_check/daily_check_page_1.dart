part of '../pages.dart';

class DailyCheckPage1 extends StatefulWidget {
  const DailyCheckPage1({Key? key}) : super(key: key);

  @override
  State<DailyCheckPage1> createState() => _DailyCheckPage1State();
}

class _DailyCheckPage1State extends State<DailyCheckPage1> {
  @override
  Widget build(BuildContext context) {
    return CustomOptionPage(
        appBar: dailyCheck,
        title: "Pornografi",
        subtitle: "Apakah Anda berhasil untuk menahan diri\ndari menonton pornografi hari ini?",
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (c) => DailyCheckPage2()));
        });
  }
}
