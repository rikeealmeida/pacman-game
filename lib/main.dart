import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pacman/game_enemy.dart';

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
    return BonfireWidget(
      map: WorldMapByTiled(
        "map/pacman_map.json",
        forceTileSize: Vector2(32, 32),
      ),
      joystick: Joystick(
        keyboardConfig: KeyboardConfig(),
        // directional: JoystickDirectional(),
      ),
      player: GameHero(Vector2(20, 457)),
      enemies: [
        GameEnemy(Vector2(80, 457)),
      ],
    );
  }
}
