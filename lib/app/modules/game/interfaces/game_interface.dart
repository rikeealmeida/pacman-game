import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';

class GameUI extends StatefulWidget {
  final BonfireGame game;
  static final overlayKey = 'gameInterface';
  const GameUI({super.key, required this.game});

  @override
  State<GameUI> createState() => _GameUIState();
}

class _GameUIState extends State<GameUI> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 100,
      width: 300,
      child: Material(
        color: Colors.black,
        child: Center(
          child: Text(
            'Asdasdasdas',
            style: TextStyle(
              fontSize: 55,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ));
  }
}
