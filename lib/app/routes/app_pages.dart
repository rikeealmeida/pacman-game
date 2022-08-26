import 'package:get/get.dart';

import '../modules/game_hero/bindings/game_hero_binding.dart';
import '../modules/game_hero/views/game_hero_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.GAME_HERO,
      page: () => const GameHeroView(),
      binding: GameHeroBinding(),
    ),
  ];
}
