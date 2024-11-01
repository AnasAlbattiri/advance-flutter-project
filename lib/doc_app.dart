import 'package:advance_flutter_course/core/routing/app_router.dart';
import 'package:advance_flutter_course/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/routes.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // بتنحط المساحات هاي بناءً على قياس السكرينات الي ع فيقما من اليو آي يو اكس
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Advance Flutter Course',
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: ColorsManager.wColor,
        ),
        initialRoute: Routes.onboardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
