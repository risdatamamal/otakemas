part of 'models.dart';

class OnboardingModel {
  final String image;
  final String title;
  final String? appname;
  final String subtitle;

  OnboardingModel(
      {required this.image,
      required this.title,
      this.appname,
      required this.subtitle});
}

List<OnboardingModel> onboardings = [
  OnboardingModel(
      image: Assets.onBoarding1,
      title: 'Selamat Datang Di Aplikasi',
      appname: 'OtakEmas',
      subtitle:
          'Asisten pribadi untuk membantu Anda berhenti dari kecanduan PMO (Pornografi,masturbasi,orgasm)'),
  OnboardingModel(
      image: Assets.onBoarding2,
      title: 'Rasakan Kemajuan Anda',
      subtitle:
      'Atasi rasa kecanduan Anda selangkah demi selangkah, hari demi hari'),
  OnboardingModel(
      image: Assets.onBoarding3,
      title: 'Dorongan & Motivasi',
      subtitle:
      'Motivasi diri sendiri dengan melakukan hal-hal positif setiap hari'),
];
