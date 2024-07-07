import 'package:flame/components.dart';
import 'package:flappy_bird/config.dart';
import 'package:flappy_bird/flappy_bird_game.dart';
import 'package:flappy_bird/pipe.dart';
import 'package:flappy_bird/pipe_movement.dart';


class PipeGroup extends PositionComponent with HasGameRef <FlappyBirdGame> {
  PipeGroup();


@override
Future<void> onLoad() async {
  position.x=gameRef.size.x;
  
  
  addAll([
    Pipe(pipePostion: PipePostion.top, height: 100),
    Pipe(pipePostion: PipePostion.bottom, height: 200)
  ]);
}
 
 @override
  void update(double dt) {
   
    super.update(dt);
    position.x-= Config.gameSpeed * dt;

  }

}

