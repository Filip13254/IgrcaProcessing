int stevilo_zogc=5;

Top top=new Top();
Tarca tarca=new Tarca();
Krogla[] zogca=new Krogla[stevilo_zogc];

float kot;
int score=0;

void setup()
{
  background(0);
  rectMode(CENTER);
  noStroke();
  noCursor();
  textSize(120);

  size(1000, 800);
  fill(95, 95, 95);
  
  for(int i=0;i<stevilo_zogc;i++)
  {
    zogca[i]=new Krogla();
    zogca[i].nastaviKroglo(kot,12);
  }
  
  tarca.nastavi();
 
}

void draw()
{
  background(0);
  //rect(width/2, height/2,100,100);
  rectMode(CENTER);
  fill(255,0,0);
  text(score,10,80);
  tarca.narisi();
  cros();
  
  
  if(mouseX>0)
    kot=asin(mouseX/dist(0,0,mouseX,(height-mouseY)))+PI/2;
  

  for(int i=0;i<stevilo_zogc;i++)
  {
    zogca[i].narisiKroglo();
  }
  
  for(int i=0;i<stevilo_zogc;i++)
  {
    if(zogca[i].izPolja()) 
      zogca[i].nastaviKroglo(kot+random(-1,1)*random(0,PI/8), 12);
  }
  
  if(zadetek())
  {
     tarca.nastavi();
     score++;
  }
  
  fill(95, 95, 95);
  top.narisiTop(kot);
}

void cros()
{
  fill(255, 0, 0);
  rect(mouseX, mouseY, 5, 30);
  rect(mouseX, mouseY, 30, 5);
  fill(0);
  rect(mouseX, mouseY, 5, 5);
}

boolean zadetek()
{
  for(int i=0;i<stevilo_zogc;i++)
  {
    if(tarca.x-5<zogca[i].koordinate.x && zogca[i].koordinate.x<tarca.x+5)
    {
      if(tarca.y-15<zogca[i].koordinate.y && zogca[i].koordinate.y<tarca.y+12)
      {
        return true;
      }
    }
  }
  return false;
}
