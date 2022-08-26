import 'package:bonfire/bonfire.dart';
import 'package:pacman_game/app/modules/game_hero/data/game_sprite_sheet.dart';

class GameHero extends SimplePlayer with ObjectCollision {
  GameHero(Vector2 position)
      : super(
          position: position,
          animation: SimpleDirectionAnimation(
            idleRight: GameSpriteSheet.heroIdleLeft,
            runRight: GameSpriteSheet.heroIdleRight,
            idleDown: GameSpriteSheet.heroIdleDown,
            idleUp: GameSpriteSheet.heroIdleUp,
          ),
          size: Vector2(40, 40),
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.circle(
            radius: 25.5,
            align: Vector2(
              12.5,
              0,
            ),
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
