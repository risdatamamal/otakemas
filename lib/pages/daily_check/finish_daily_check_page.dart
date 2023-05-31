part of '../pages.dart';

class FinishDailyCheckPage extends StatefulWidget {
  const FinishDailyCheckPage({Key? key}) : super(key: key);

  @override
  State<FinishDailyCheckPage> createState() => _FinishDailyCheckPageState();
}

class _FinishDailyCheckPageState extends State<FinishDailyCheckPage> {
  @override
  Widget build(BuildContext context) {
    return CustomFinishPage(
        appBar: dailyCheck,
        title: "Kerja Bagus !",
        subtitle: "Terus konsisten dan semoga harimu menyenangkan",
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (c) => HomePage()));
        });
  }
}
