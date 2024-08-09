import 'dart:ffi';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flappy_bird/assets.dart';
import 'package:flappy_bird/bird_movement.dart';
import 'package:flappy_bird/config.dart';
import 'package:flappy_bird/flappy_bird_game.dart';
import 'package:flutter/widgets.dart';
import 'package:flappy_bird/game_over_screen.dart';

class Bird extends SpriteGroupComponent<BirdMovement>
with HasGameRef<FlappyBirdGame>, CollisionCallbacks{
Bird();

int score = 0;

 void reset () {
position = Vector2(50, gameRef.size.y / 2 - size.y/2);
 }


  void fly() {
    add(
      MoveByEffect(
        Vector2(0, Config.gravity),
        EffectController(duration: 0.2, curve: Curves.decelerate),
        onComplete: () => current = BirdMovement.down,
      ),
    );
     
    current = BirdMovement.up;
  }
void onCollisionStart(Set<Vector2> intersectionPoints, PositionComponent other,) {
  super.onCollisionStart(intersectionPoints, other);
gameOver();
  }
void gameOver(){
  gameRef.pauseEngine();
  
}

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
add(CircleHitbox());
}

@override
  void update(double dt) {

    super.update(dt);
    position.y +=Config.birdVelocity * dt;
 
  }
 }