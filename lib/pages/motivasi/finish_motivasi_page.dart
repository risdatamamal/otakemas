part of '../pages.dart';

class FinishMotivasiPage extends StatefulWidget {
  const FinishMotivasiPage({Key? key}) : super(key: key);

  @override
  State<FinishMotivasiPage> createState() => _FinishMotivasiPageState();
}

class _FinishMotivasiPageState extends State<FinishMotivasiPage> {
  @override
  Widget build(BuildContext context) {
    return CustomFinishPage(
        appBar: "Motivasi",
        title: "Semoga Tercerahkan",
        subtitle: "Tidak ada yang dapat merubah dirimu selain dirimu sendiri",
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (c) => HomePage()));
        });
  }
}
