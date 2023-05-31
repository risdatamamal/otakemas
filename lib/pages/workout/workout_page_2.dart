part of '../pages.dart';

class WorkoutPage2 extends StatefulWidget {
  const WorkoutPage2({Key? key}) : super(key: key);

  @override
  State<WorkoutPage2> createState() => _WorkoutPage2State();
}

class _WorkoutPage2State extends State<WorkoutPage2> {
  @override
  Widget build(BuildContext context) {
    return CustomOptionPage(
        appBar: workout,
        image: Assets.workout2,
        title: "Plank",
        subtitle: "Sudahkah kamu melakukan  Plank (10x) untuk hari ini?",
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (c) => WorkoutPage3()));
        });
  }
}
