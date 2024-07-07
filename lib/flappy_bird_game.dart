import 'dart:async';
import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';


import 'package:flappy_bird/background.dart';
import 'package:flappy_bird/bird.dart';
import 'package:flame/game.dart';
import 'package:flappy_bird/config.dart';
import 'package:flappy_bird/ground.dart';
import 'package:flappy_bird/pipe_group.dart';

class FlappyBirdGame extends FlameGame{
  late Bird bird;
   Timer interval = Timer(Config.pipeInterval, repeat: true);
  @override
  Future <void> onLoad() async {
   addAll([
   Background(),
   Ground(),
   bird = Bird(),
   PipeGroup(),
   ]);
   interval.onTick = () => add (PipeGroup());
  }

  @override
  void update(double dt) {
   
    super.update(dt);
  }
}