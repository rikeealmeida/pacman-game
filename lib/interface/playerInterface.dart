import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'dart:async' as async;

class PlayerInterface extends StatefulWidget {
  final BonfireGame game;
  static final overlayKey = 'playerInterface';
  bool isBuffered = false;
  PlayerInterface({super.key, required this.game});

  @override
  State<PlayerInterface> createState() => _PlayerInterfaceState();
}

class _PlayerInterfaceState extends State<PlayerInterface> {
  late async.Timer _lifeTime;
  bool playerIsDead = false;

  @override
  void initState() {
    _lifeTime = async.Timer.periodic(
      Duration(milliseconds: 100),
      _verifyLife,
    );

    super.initState();
  }

  @override
  void dispose() {
    _lifeTime.cancel;
    super.dispose();
  }

  void _verifyLife(async.Timer timer) {
    if (widget.game.player!.isDead) {
      setState(() {
        playerIsDead = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: playerIsDead
            ? Container(
                height: 100,
                width: 300,
                child: Material(
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      'Game over!',
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            : SizedBox());
  }
}
