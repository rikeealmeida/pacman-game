import 'package:bonfire/bonfire.dart';

import 'game_sprite_sheet.dart';

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
          size: Vector2(32, 32),
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.circle(
            radius: 20,
          ),
        ],
      ),
    );
  }

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
  // void receiveDamage(double damage, int from) {
  //   super.receiveDamage(damage, from);
  // }

  @override
  void die() {
    super.die();
  }
}
