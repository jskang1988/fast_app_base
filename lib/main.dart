import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:melchi_and_pet/sample/firebase_sample_widget.dart';

import 'app.dart';
import 'common/data/preference/app_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await AppPreferences.init();

  runApp(FirebaseSampleWidget());
}
