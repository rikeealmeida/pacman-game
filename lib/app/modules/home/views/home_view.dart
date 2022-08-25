import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BonfireWidget(
      map: WorldMapByTiled("map/pacman_map.json",
          forceTileSize: Vector2(16, 16)),
      joystick: Joystick(
        directional: JoystickDirectional(),
      ),
    );
  }
}
