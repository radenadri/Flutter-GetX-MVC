import 'package:get/get.dart';
import 'package:mvc/models/counter.dart';

class CounterController extends GetxController {
  final counter = Get.find<Counter>();

  void increment() {
    counter.count++;
    update();
  }
}
