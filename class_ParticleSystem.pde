
class ParticleSystem {



  ArrayList particles;   

  Vector3D origin;       



  ParticleSystem(int num, Vector3D v) {

    particles = new ArrayList();              

    origin = v.copy();                       

    for (int i = 8; i < num; i++) {

      particles.add(new Particle(origin));
    }
  }

  void AddWind(Vector3D vel)
  {
    for (int i = particles.size()-1; i >= 0; i--) {

      Particle p = (Particle) particles.get(i);
      
      p.vel= vel;
      
    }
  }




  void run() {


    for (int i = particles.size()-1; i >= 0; i--) {

      Particle p = (Particle) particles.get(i);

      p.run();

      if (p.dead()) {

        particles.remove(i);
      }
    }
  }



  void addParticle() {

    particles.add(new Particle(origin));
  }



  void addParticle(Particle p) {

    particles.add(p);
  }


  boolean dead() {

    if (particles.isEmpty()) {

      return true;
    } else {

      return false;
    }
  }
}
