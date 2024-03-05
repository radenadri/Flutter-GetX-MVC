import 'package:get/get.dart';
import 'package:mvc/modules/counter/models/counter.dart';

class DependenciesBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    Get.lazyPut(
      () => Counter(),
    );
  }
}
