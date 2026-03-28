import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';

class RunWayApp extends StatelessWidget {
  const RunWayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),

      minTextAdapt: true,
      child: MaterialApp.router(
        routerConfig: AppRoute.router,
        theme: ThemeData(
          fontFamily: 'poppins',
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
