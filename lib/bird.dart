import 'package:flame/components.dart';
import 'package:flappy_bird/assets.dart';
import 'package:flappy_bird/bird_movement.dart';
import 'package:flappy_bird/flappy_bird_game.dart';

class Bird extends SpriteGroupComponent<BirdMovement>
with HasGameRef<FlappyBirdGame>{
Bird();

@override 
Future<void>onLoad() async{
final birdMidFlap = await gameRef.loadSprite(Assets.birdMidFlap);
final birdUpFlap = await gameRef.loadSprite(Assets.birdUpFlap);
final birdDownFlap = await gameRef.loadSprite(Assets.birdDownFlap);

size = Vector2(50, 40);
position = Vector2(50, gameRef.size.y / 2);
current = BirdMovement.middle;
sprites = {
BirdMovement.up: birdUpFlap,
BirdMovement.middle: birdMidFlap,
BirdMovement.down: birdDownFlap,
};
}
 }