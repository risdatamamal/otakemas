part of 'shared.dart';

const Color mainColor = Color(0xffff9f0f);
const Color secColor = Color(0xff020202);
const Color greyColor = Color(0xff8D92A3);
const Color splashColor = Color(0xffAD0000);

Widget loadingIndicator = SpinKitFadingCircle(
  size: 45,
  color: mainColor,
);

TextStyle greyFontStyle = GoogleFonts.poppins().copyWith(color: greyColor);
TextStyle blackFontStyle1 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500);
TextStyle blackFontStyle2 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);
TextStyle blackFontStyle3 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500);

const double defaultMargin = 24;

const brown = Colors.brown;
const red = Colors.red;
const white = Colors.white;
const black = Colors.black;
const grey = Colors.grey;
const blue = Colors.blueAccent;