import 'package:bonfire/bonfire.dart';
import 'package:pacman/app/modules/game/controllers/game_hero.dart';

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
    this.seeComponentType<GameHero>(
      observed: (player) {
        print('tocou a comida pequena!');
        this.removeFromParent();
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
    this.seeComponentType<GameHero>(
      observed: (player) {
        this.removeFromParent();
      },
      radiusVision: 1,
    );
    super.update(dt);
  }
}
