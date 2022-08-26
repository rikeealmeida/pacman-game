import 'package:get/get.dart';

import '../controllers/game_hero_controller.dart';

class GameHeroBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GameHeroController>(
      () => GameHeroController(),
    );
  }
}
