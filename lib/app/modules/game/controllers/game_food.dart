import 'package:bonfire/bonfire.dart';
import 'package:pacman/app/modules/game/controllers/game_controller.dart';
import 'package:pacman/app/modules/game/controllers/game_hero.dart';
import 'package:pacman/app/modules/game/views/game_view.dart';

class Food extends GameDecoration with ObjectCollision {
  Food(Vector2 position)
      : super.withSprite(
          position: position,
          size: Vector2(8, 8),
          sprite: Sprite.load(
            'food.png',
            srcPosition: Vector2(50, 21),
          ),
        ) {
    // setupCollision(CollisionConfig(
    //   collisions: [
    //     CollisionArea.circle(
    //       radius: 3,
    //     )
    //   ],
    // ));
  }

  @override
  void update(double dt) {
    seeComponentType<GameHero>(
      observed: (player) {
        GameView().controller.increasePoints();
        removeFromParent();
      },
      radiusVision: 1,
    );
    super.update(dt);
  }
}

class BigFood extends GameDecoration with ObjectCollision {
  BigFood(Vector2 position)
      : super.withSprite(
            position: position,
            size: Vector2(16, 16),
            sprite: Sprite.load(
              'food.png',
              srcPosition: Vector2(50, 21),
            )) {
    // setupCollision(CollisionConfig(
    //   collisions: [
    //     CollisionArea.circle(
    //       radius: 3,
    //     )
    //   ],
    // ));
  }

  @override
  void update(double dt) {
    seeComponentType<GameHero>(
      observed: (player) async {
        const GameView().controller.isBuffered.value = true;
        print('Dobro de pontos ativados');
        await Future.delayed(
          const Duration(
            seconds: 10,
          ),
          () {
            GameView().controller.isBuffered.value = false;
            print('Dobro de pontos desativados');
          },
        );
        removeFromParent();
      },
      radiusVision: 1,
    );
    super.update(dt);
  }
}
