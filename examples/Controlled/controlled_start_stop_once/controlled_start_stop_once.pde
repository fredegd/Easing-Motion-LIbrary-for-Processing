/**
 * EasyEase
 * A collection of easing function for Processing.
 *
 * https://fredegd.github.io/EasyEase/
 *
 * Example: controlled start_stop_once
 *
 * automate the motion from start to stop
 * taking a conter as a motion controller
 *
 * the result motion happens only once
 *
 *
 * @author      Fred Egidi  -  https://github.com/fredegd
 *
 */
import easy.ease.*;
EasyEase controlled;
float intensity = 3.0;
void setup() {
  size(600, 600);
  rectMode(CENTER);
  controlled = new EasyEase(this, intensity);
}
void draw() {
  background(0);
  fill(255, 0, 255);
  noStroke();
  float count = frameCount/60.0;
  //alternatively:
  //float count = mover.framer(frameCount);

  float start = 50;
  float stop = width-50;

  float x = controlled.out(count, start, stop, "once");

  rect(x, height/2, 100, 100);
}
