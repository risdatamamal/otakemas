part of '../pages.dart';

class WorkoutPage3 extends StatefulWidget {
  const WorkoutPage3({Key? key}) : super(key: key);

  @override
  State<WorkoutPage3> createState() => _WorkoutPage3State();
}

class _WorkoutPage3State extends State<WorkoutPage3> {
  @override
  Widget build(BuildContext context) {
    return CustomOptionPage(
        appBar: workout,
        image: Assets.workout3,
        title: "Sit Up",
        subtitle: "Sudahkah kamu melakukan sit Up (10x) untuk hari ini?",
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (c) => FinishWorkoutPage()));
        });
  }
}
