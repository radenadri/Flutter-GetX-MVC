import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvc/app/di/dependencies_binding.dart';
import 'package:mvc/app/routes/routes.dart';

void main() async {
  // Bind dependencies before runApp
  await DependenciesBinding().dependencies();

  runApp(
    GetMaterialApp(
      title: "MVC Flutter - GetX",
      debugShowCheckedModeBanner: true,
      defaultTransition: Transition.native,
      transitionDuration: const Duration(milliseconds: 300),
      initialRoute: AppRoutes.INITIAL,
      getPages: AppRoutes.routes,
      themeMode: ThemeMode.system,
    ),
  );
}
