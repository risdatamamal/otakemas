part of '../pages.dart';

class FinishWorkoutPage extends StatefulWidget {
  const FinishWorkoutPage({Key? key}) : super(key: key);

  @override
  State<FinishWorkoutPage> createState() => _FinishWorkoutPageState();
}

class _FinishWorkoutPageState extends State<FinishWorkoutPage> {
  @override
  Widget build(BuildContext context) {
    return CustomFinishPage(
        appBar: workout,
        title: "Kerja Bagus !",
        subtitle: "Terus konsisten dan semoga harimu menyenangkan",
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (c) => HomePage()));
        });
  }
}
