import 'package:advance_flutter/core/di/dependency_injection.dart';
import 'package:advance_flutter/core/routing/app_router.dart';
import 'package:advance_flutter/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  getItSetup();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
