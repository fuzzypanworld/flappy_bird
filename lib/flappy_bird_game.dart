import 'package:flame/game.dart';
import 'package:flappy_bird/background.dart';
import 'package:flappy_bird/bird.dart';
import 'package:flappy_bird/ground.dart';

class FlappyBirdGame extends FlameGame{
  late Bird bird;
  @override
  Future <void> onLoad() async {
   addAll([
   Background(),
   Ground(),
   bird = Bird(),
   ]);
  }
}