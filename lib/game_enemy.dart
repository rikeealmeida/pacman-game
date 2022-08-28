import 'package:bonfire/bonfire.dart';
import 'package:pacman/game_sprite_sheet.dart';

class GameEnemy extends SimpleEnemy
    with ObjectCollision, AutomaticRandomMovement {
  GameEnemy(Vector2 position)
      : super(
            position: position,
            size: Vector2(16, 16),
            animation: SimpleDirectionAnimation(
              idleRight: EnemySpriteSheet.enemyIdleRight,
              runRight: EnemySpriteSheet.enemyIdleRight,
              idleLeft: EnemySpriteSheet.enemyIdleLeft,
              runLeft: EnemySpriteSheet.enemyIdleLeft,
              idleUp: EnemySpriteSheet.enemyIdleUp,
              runUp: EnemySpriteSheet.enemyIdleUp,
              idleDown: EnemySpriteSheet.enemyIdleDown,
              runDown: EnemySpriteSheet.enemyIdleDown,
            ),
            speed: 50) {
    setupCollision(
      CollisionConfig(
        collisions: [CollisionArea.rectangle(size: Vector2(16, 16))],
      ),
    );
  }

  @override
  void update(double dt) {
    super.update(dt);

    runRandomMovement(dt, minDistance: 100);

    seeAndMoveToPlayer(
      radiusVision: 100,
      closePlayer: (player) {
        player.die();
      },
      margin: 1,
    );
  }
}
