import 'package:bonfire/bonfire.dart';
import 'package:pacman/app/modules/game/sprites/game_sprite_sheet.dart';
import 'package:pacman/app/modules/game/views/game_view.dart';

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
            speed: 40) {
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
        if (GameView().controller.isBuffered.value == true) {
          removeFromParent();
          GameView().controller.points.value =
              GameView().controller.points.value + 100;
        } else {
          player.die();
        }
      },
      margin: .5,
    );
  }
}
