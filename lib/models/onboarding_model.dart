part of 'models.dart';

class OnboardingModel {
  Image? image;
  String? title;
  String? description;
  Widget? extraWidget;

  OnboardingModel({this.image, this.title, this.description, this.extraWidget}) {
    if (extraWidget == null) {
      extraWidget = new Container();
    }
  }
}