import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/game_hero_controller.dart';

class GameHeroView extends GetView<GameHeroController> {
  const GameHeroView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GameHeroView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'GameHeroView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
