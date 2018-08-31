PImage Mountain2;
PImage Mountain3;
float Xs[] = new float [40];
float Ys[] = new float [40];
float Xspeed[] = new float[40];
float Yspeed[] = new float[40];


import ddf.minim.*;


Minim minim;
AudioPlayer player;



void setup()
{
  Mountain2 = loadImage("Mountain2.png");
  Mountain3 = loadImage("Mountain3.png");
  noStroke(); 
  background(1, 28, 38);
  size(800, 800);

  Xs [0] = random(0, width);

  for (int i = 0; i< 40; i++)
  {
    Xs[i] = random(0, width);
    Ys[i] = random(0, height);


    if (  Y > height)
    {
      Ys[i] = 0;
    }
  }

  minim = new Minim(this);

  player = minim.loadFile("Calm.mp3");
}

void draw()
{
 


  fill(0, 0, 0, 35);
  rect(0, 0, width, height);

  for (int i = 0; i< 40; i++)
  {
     fill(1, 35, 56);
 ellipse(770,50,200,200);
  fill(219, 232, 255);
  ellipse(770,50,180,180);
    fill(219, 232, 255);
    ellipse(Xs[i], Ys[i], 7, 7);
    Ys[i] = Ys[i] + 5;
    if (Ys[i] > height) {
      Ys[i] = 50;
      Xs[i] = random(0, width);
    }

    if (Ys[i] > 700) {
      fill(219, 232, 255, 10);
      ellipse(Xs[i], 700, 100, 100);
    }
    if (Ys[i] > 350) {
      if (Xs[i] > 200) {
        if (Xs[i] < 250) {
        }
      }
    }
  }

  if ( player.isPlaying() )
  {
    text("Press any key to pause playback.", 10, 20 );
  } else
  {
    text("Press any key to start playback.", 10, 20 );
  }
  tint(0, 0, 0);
  image(Mountain2, 0, 570);
  image(Mountain3, -5, 450);
}


void keyPressed()
{
  if ( player.isPlaying() )
  {
    player.pause();
  } else if ( player.position() == player.length() )
  {
    player.rewind();
    player.play();
  } else
  {
    player.play();
  }
}

void mouseClicked() {
  background(219, 232, 255);

}
