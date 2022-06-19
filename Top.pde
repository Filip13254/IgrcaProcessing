class Top
{
  Top()
  {
    println("top narisan");
  }

  void narisiTop(float kot1)
  {
    fill(95,95,95);
    rectMode(CENTER);

    pushMatrix();
    translate(0,height);
    rotate(kot1);
    rect(0,0,250,50);
    popMatrix();
  }
} 
