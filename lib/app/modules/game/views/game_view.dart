import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pacman/app/modules/game/controllers/game_controller.dart';
import 'package:pacman/app/modules/game/controllers/game_enemy.dart';
import 'package:pacman/app/modules/game/controllers/game_food.dart';
import 'package:pacman/app/modules/game/controllers/game_hero.dart';
import 'package:pacman/app/modules/game/interfaces/game_interface.dart';
import 'package:pacman/app/modules/game/interfaces/player_Interface.dart';

class GameView extends GetView<CustomGameController> {
  const GameView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: BonfireWidget(
        map: WorldMapByTiled(
          "map/pacman_map.json",
          forceTileSize: Vector2(16, 16),
          objectsBuilder: {
            'food': (props) => Food(props.position),
            'bigFood': (props) => BigFood(props.position)
          },
        ),
        // joystick: JoystickMoveToPosition(),

        joystick: Joystick(
          keyboardConfig: KeyboardConfig(),
          // directional: JoystickDirectional(),
        ),
        player: GameHero(Vector2(20, 230)),
        cameraConfig: CameraConfig(moveOnlyMapArea: true, zoom: 1),
        enemies: [
          GameEnemy(
            Vector2(185, 215),
          ),
          GameEnemy(
            Vector2(185, 240),
          ),
          GameEnemy(
            Vector2(220, 215),
          ),
          GameEnemy(
            Vector2(220, 240),
          ),
          GameEnemy(
            Vector2(250, 215),
          ),
          GameEnemy(
            Vector2(250, 240),
          ),
        ],
        overlayBuilderMap: {
          'playerInterface': (context, game) => PlayerInterface(
                game: game,
              ),
          'gameInterface': (context, game) => GameUI(
                game: game,
              )
        },
        initialActiveOverlays: [
          PlayerInterface.overlayKey,
        ],
      ),
    );
  }
}
