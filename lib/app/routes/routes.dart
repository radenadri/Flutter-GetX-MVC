// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:mvc/modules/counter/views/counter_page.dart';

class AppRoutes {
  static const INITIAL = '/counter';

  static final routes = [
    GetPage(
      name: '/counter',
      page: () => const CounterPage(),
    ),
  ];
}
