import 'package:advance_flutter/core/routing/app_router.dart';
import 'package:advance_flutter/core/routing/routes.dart';
import 'package:advance_flutter/core/theaming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(500, 800),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorsManger.mainBlue,
        ),
        initialRoute: Routes.onBoarding,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
