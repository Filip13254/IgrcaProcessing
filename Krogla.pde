class Krogla
{
 
  PVector koordinate;
  PVector hitrost;
  PVector gravitacija;

  Krogla()
  {
    println("krogla narisana");
    
  }

  void nastaviKroglo(float kot, float magnituda)
  {
    koordinate=new PVector(0,800);
    hitrost=new PVector(-cos(kot)*magnituda,-sin(kot)*magnituda);
   gravitacija=new PVector(0,0.1);
   
  }

  void narisiKroglo()
  {
      fill(255,128,0);
      ellipse(koordinate.x,koordinate.y,15,15);
      hitrost.add(gravitacija);
      koordinate.add(hitrost);
      
  }

  boolean izPolja()
  {
      if(koordinate.x>1000 || koordinate.x<-100)
        return true;

      if(koordinate.y>800 || koordinate.y<0)
        return true;

      return false;
  }
  
  
}
