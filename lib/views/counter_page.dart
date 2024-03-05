import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvc/controllers/counter_controller.dart';

class CounterPage extends GetView<CounterController> {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("MVC Flutter - GetX"),
      ),
      body: Center(
        child: GetBuilder<CounterController>(
          builder: (_) => Text(
            '${_.counter.count}',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterController.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
