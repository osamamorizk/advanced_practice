import 'package:advance_flutter/core/di/dependency_injection.dart';
import 'package:advance_flutter/core/helpers/cashe_helper.dart';
import 'package:advance_flutter/core/helpers/constants.dart';
import 'package:advance_flutter/core/helpers/extension.dart';
import 'package:advance_flutter/core/routing/app_router.dart';
import 'package:advance_flutter/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CasheHlper.casheIntialization();
  await ScreenUtil.ensureScreenSize();
  await checkIsLoggedIn();
  getItSetup();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}

checkIsLoggedIn() async {
  String? userToken = await CasheHlper.getSecuredData(key: Constants.userToken);
  if (userToken.isNullOrEmpty()) {
    isLoggedIn = false;
  } else {
    isLoggedIn = true;
  }
}
