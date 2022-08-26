import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
// import 'package:pacman_game/app/modules/game_hero/data/game_sprite_sheet.dart';
import 'package:pacman_game/app/modules/game_hero/models/game_hero.dart';

import '../../game_hero/data/game_sprite_sheet.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BonfireWidget(
      map: WorldMapByTiled(
        "map/pacman_map.json",
        forceTileSize: Vector2(32, 32),
      ),
      joystick: Joystick(
        keyboardConfig: KeyboardConfig(),
        directional: JoystickDirectional(),
      ),
      player: GameHero(Vector2(20, 450)),
      decorations: [
        MapDecoration(
          Vector2(20, 20),
        )
      ],
    );
  }
}

class MapDecoration extends GameDecoration with ObjectCollision {
  MapDecoration(Vector2 position)
      : super.withSprite(
          position: position,
          size: Vector2.all(1),
          sprite: Sprite.load(
            'map/pacman_map.png',
          ),
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.rectangle(
            size: Vector2(15, 300),
            align: Vector2.all(7),
          ),
        ],
      ),
    );
  }
}
