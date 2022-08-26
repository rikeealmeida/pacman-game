import 'package:bonfire/bonfire.dart';

class GameSpriteSheet {
  static Future<SpriteAnimation> get heroIdleLeft => SpriteAnimation.load(
        'pac-man-hero.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.2,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
  static Future<SpriteAnimation> get heroIdleRight => SpriteAnimation.load(
        'pac-man-hero.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.2,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
  static Future<SpriteAnimation> get heroIdleUp => SpriteAnimation.load(
        'pac-man-hero.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.2,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
  static Future<SpriteAnimation> get heroIdleDown => SpriteAnimation.load(
        'pac-man-hero.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.2,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(0, 0),
        ),
      );
}
