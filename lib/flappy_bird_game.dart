import 'dart:async';



import 'package:flame/events.dart';
import 'package:flame/timer.dart';
import 'package:flappy_bird/background.dart';
import 'package:flappy_bird/bird.dart';
import 'package:flame/game.dart';
import 'package:flappy_bird/config.dart';
import 'package:flappy_bird/ground.dart';
import 'package:flappy_bird/pipe_group.dart';
import 'package:flappy_bird/assets.dart';


class FlappyBirdGame extends FlameGame with TapDetector{
  FlappyBirdGame();


  

  late Bird bird;
  Timer interval = Timer(Config.pipeInterval, repeat: true);
  @override
  
  Future <void> onLoad() async {
    
   addAll([
   Background(),
   Ground(),
   bird = Bird(),
 
  
   ]);
     interval.onTick = () => add(PipeGroup());
  }

   @override
  void onTap() {
  
    super.onTap();
    bird.fly();
  }

   @override
     update(double dt) async {
    super.update(dt);
    interval.update(dt);
  }

}
