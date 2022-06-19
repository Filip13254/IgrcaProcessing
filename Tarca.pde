class Tarca
{
  float x,y;
  float smer=1;
  
  
  Tarca()
  {
    println("narisalu tarču");
  }
  
  void nastavi()
  {
    x=random(500,900);
    y=0;
  }
  
  
  void narisi()
  {
    fill(255);
    rect(x, y, 10,30);
    y=y+3*smer;
    
    if(y>800||y<0)
    {
      smer=smer*-1;
    }
  }
}
