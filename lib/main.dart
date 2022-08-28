import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pacman/food.dart';
import 'package:pacman/game_enemy.dart';
import 'package:pacman/interface/playerInterface.dart';

import 'game_hero.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pac man game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Game(),
    );
  }
}

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
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
              )
        },
        initialActiveOverlays: [
          PlayerInterface.overlayKey,
        ],
      ),
    );
  }
}
