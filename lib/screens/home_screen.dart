import 'package:flutter/material.dart';
import 'package:flutter_getx_counter/utils/counter_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController controller = Get.put(CounterController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Center(
          child: Text(
            "GetX Counter One",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Center(
        child: Obx(() {
          print("rebuild: Only rebuilding this section!");
          return Text(
            controller.counter.toString(),
            style: const TextStyle(
              fontSize: 60,
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        onPressed: () {
          controller.incrementCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
