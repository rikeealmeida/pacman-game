import 'package:get/get.dart';

class CustomGameController extends GetxController {
  final points = 0.obs;
  final isBuffered = false.obs;

  @override
  void increasePoints() {
    if (isBuffered.value == true) {
      points.value = points.value + 20;
    } else {
      points.value = points.value + 10;
    }

    print(points.value);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
