part of '../pages.dart';

class WorkoutPage1 extends StatefulWidget {
  const WorkoutPage1({Key? key}) : super(key: key);

  @override
  State<WorkoutPage1> createState() => _WorkoutPage1State();
}

class _WorkoutPage1State extends State<WorkoutPage1> {
  @override
  Widget build(BuildContext context) {
    return CustomOptionPage(
        appBar: workout,
        image: Assets.workout1,
        title: "Push Up",
        subtitle: "Sudahkah kamu melakukan  Push Up (10x) untuk hari ini?",
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (c) => WorkoutPage2()));
        });
  }
}
