import 'dart:math';

import 'package:flame/components.dart';
import 'package:flappy_bird/config.dart';
import 'package:flappy_bird/flappy_bird_game.dart';
import 'package:flappy_bird/pipe.dart';
import 'package:flappy_bird/pipe_movement.dart';


class PipeGroup extends PositionComponent with HasGameRef <FlappyBirdGame> {
  PipeGroup();
final _random = Random();

@override
Future<void> onLoad() async {
position.x=gameRef.size.x;


  final heightMinusGround =  gameRef.size.y - Config.groundHeight;
  final spacing = 200 + _random.nextDouble() * (heightMinusGround / 4);
  final centerY = spacing + _random.nextDouble() * (heightMinusGround - spacing);
  addAll([
    Pipe(pipePostion: PipePostion.top, height: centerY - spacing / 2),
    Pipe(pipePostion: PipePostion.bottom, height: heightMinusGround - centerY + spacing /50)
  ]);
}
 
 @override
  void update(double dt) {
   
    super.update(dt);
    position.x-= Config.gameSpeed * dt;

  }

}

