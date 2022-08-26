import 'package:bonfire/bonfire.dart';

class HeroSpriteSheet {
  static Future<SpriteAnimation> get heroIdleLeft => SpriteAnimation.load(
        'pac-man-units.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.2,
          textureSize: Vector2(166, 166),
          texturePosition: Vector2(10, 45),
        ),
      );
  static Future<SpriteAnimation> get heroIdleRight => SpriteAnimation.load(
        'pac-man-units.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.2,
          textureSize: Vector2(166, 166),
          texturePosition: Vector2(10, 45),
        ),
      );
  static Future<SpriteAnimation> get heroIdleUp => SpriteAnimation.load(
        'pac-man-units.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.2,
          textureSize: Vector2(166, 166),
          texturePosition: Vector2(10, 400),
        ),
      );
  static Future<SpriteAnimation> get heroIdleDown => SpriteAnimation.load(
        'pac-man-units.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.2,
          textureSize: Vector2(166, 166),
          texturePosition: Vector2(10, 230),
        ),
      );
}

class EnemySpriteSheet {
  static Future<SpriteAnimation> get enemyIdleLeft => SpriteAnimation.load(
        'pac-man-units.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.2,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
  static Future<SpriteAnimation> get enemyIdleRight => SpriteAnimation.load(
        'pac-man-units.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.2,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
  static Future<SpriteAnimation> get enemyIdleUp => SpriteAnimation.load(
        'pac-man-units.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.2,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
  static Future<SpriteAnimation> get enemyIdleDown => SpriteAnimation.load(
        'pac-man-units.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.2,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
}
