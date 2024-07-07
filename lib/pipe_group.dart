import 'package:flame/components.dart';
import 'package:flappy_bird/pipe.dart';
import 'package:flappy_bird/pipe_movement.dart';


class PipeGroup extends PositionComponent {
  PipeGroup();


@override
Future<void> onLoad() async {
  addAll([
    Pipe(pipePostion: PipePostion.top, height: 100)
  ]);
}


}

