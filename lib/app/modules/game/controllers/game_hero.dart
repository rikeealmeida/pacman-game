import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pacman/app/modules/game/sprites/game_sprite_sheet.dart';


class GameHero extends SimplePlayer with ObjectCollision {
  GameHero(Vector2 position)
      : super(
            position: position,
            animation: SimpleDirectionAnimation(
              runRight: HeroSpriteSheet.heroIdleRight,
              idleRight: HeroSpriteSheet.heroIdleRight,
              idleLeft: HeroSpriteSheet.heroIdleLeft,
              idleDown: HeroSpriteSheet.heroIdleDown,
              idleUp: HeroSpriteSheet.heroIdleUp,
              runDown: HeroSpriteSheet.heroIdleDown,
              runLeft: HeroSpriteSheet.heroIdleLeft,
              runUp: HeroSpriteSheet.heroIdleUp,
            ),
            size: Vector2(16, 16),
            speed: 60) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.circle(
            radius: 10,
          ),

          // CollisionArea.rectangle(
          //   size: Vector2(16, 16),
          // )
        ],
      ),
    );
    // setupMoveToPositionAlongThePath(
    //   pathLineColor: Colors.lightBlueAccent,
    //   barriersCalculatedColor: Colors.blue,
    //   pathLineStrokeWidth: 4,
    //   showBarriersCalculated: true,
    //   gridSizeIsCollisionSize: false,
    // );
  }
  //metodo para acao na colisão
  // @override
  // bool onCollision(GameComponent component, bool active) {
  //   print(component);
  //   print(active);
  //   return super.onCollision(component, active);
  // }
  // @override
  // void update(double dt) {
  //   // do anything
  //   super.update(dt);
  // }

  // @override
  // void render(Canvas canvas) {
  //   // do anything
  //   super.render(canvas);
  // }

  // @override
  // void joystickChangeDirectional(JoystickDirectionalEvent event) {
  //   // do anything with event of the joystick
  //   super.joystickChangeDirectional(event);
  // }

  // @override
  // void joystickAction(JoystickActionEvent event) {
  //   // do anything with event of the joystick
  //   super.joystickAction(event);
  // }

  // @override
  // void receiveDamage(AttackFromEnum attacker, double damage, identify) {
  //   super.receiveDamage(attacker, damage, identify);
  // }

  @override
  void die() {
    removeFromParent();
    super.die();
  }
}
