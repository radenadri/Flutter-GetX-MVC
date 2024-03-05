import 'package:get/get.dart';
import 'package:mvc/models/counter.dart';

class DependenciesBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    Get.lazyPut(
      () => Counter(),
    );
  }
}
