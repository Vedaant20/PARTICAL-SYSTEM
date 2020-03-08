ParticleSystem ps;
PImage img;
void setup() {

  size(500, 550);

  frameRate(10);

  colorMode(RGB, 655, 265, 155, 200);

  ps = new ParticleSystem(5, new Vector3D(width/1.7, height/3, 0));

  smooth();

  img = loadImage("pipe.PNG");
}



void draw() {

  background(26,255,65);

  ps.run();

  ps.addParticle();


  image(img, -210, 130, width/1, height/7);

  if (keyCode== UP)
  {
   Vector3D vel = new Vector3D(random(40, 1), random(-15, 10), 0); 
   ps.AddWind(vel);
  }
}
