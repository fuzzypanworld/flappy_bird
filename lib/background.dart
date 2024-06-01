import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flappy_bird/assets.dart';
import 'package:flappy_bird/flappy_bird_game.dart';

class Background extends SpriteComponent with HasGameRef<FlappyBirdGame> {
  Background();

  @override
  Future<void> onLoad() async {
    final Image background = await Flame.images.load(Assets.background);

    size = gameRef.size;

    sprite = Sprite(background);
  }
}
