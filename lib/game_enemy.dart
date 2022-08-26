import 'package:bonfire/bonfire.dart';
import 'package:pacman/game_sprite_sheet.dart';

class GameEnemy extends RotationEnemy with ObjectCollision {
  GameEnemy(Vector2 position)
      : super(
          position: position,
          size: Vector2(32, 32),
          animIdle: _getAnimation(),
          animRun: _getAnimation(),
        );
  static Future<SpriteAnimation> _getAnimation() {
    return Sprite.load(
      'pac-man-hero.png',
    ).toAnimation();
  }

  @override
  void update(double dt) {
    super.update(dt);

    this.seeAndMoveToPlayer(
      radiusVision: 100,
      closePlayer: (player) {},
    );
  }
}
