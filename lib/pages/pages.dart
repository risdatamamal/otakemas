import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:async';

// import 'package:OtakEmas/cubit/cubit.dart';
import 'package:OtakEmas/models/models.dart';
import 'package:OtakEmas/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:OtakEmas/widgets/widgets.dart';
import 'package:supercharged/supercharged.dart';
import 'package:get/get.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/widgets.dart';

part 'splash_page.dart';
part 'login_page.dart';
part 'home_page.dart';
part 'panduan_islami.dart';
part 'dzikir.dart';

part 'onboarding/onboarding_page_1.dart';
part 'onboarding/onboarding_page_2.dart';
part 'onboarding/onboarding_page_3.dart';

part 'daily_check/daily_check_page_1.dart';
part 'daily_check/daily_check_page_2.dart';
part 'daily_check/daily_check_page_3.dart';
part 'daily_check/finish_daily_check_page.dart';

part 'workout/workout_page_1.dart';
part 'workout/workout_page_2.dart';
part 'workout/workout_page_3.dart';
part 'workout/finish_workout_page.dart';

part 'motivasi/finish_motivasi_page.dart';
part 'motivasi/motivasi_page.dart';
part 'motivasi/motivasi_body_page.dart';

part 'dzikir_pagi/dzikir_pagi_body_page.dart';
part 'dzikir_pagi/dzikir_pagi_page.dart';

part 'dzikir_petang/dzikir_petang_body_page.dart';
part 'dzikir_petang/dzikir_petang_page.dart';