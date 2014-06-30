int[][] block = {
  {1,1,1,0,1,1,1},
  {1,1,1,0,1,1,1},
  {1,1,0,0,0,1,1},
  {1,0,0,0,0,0,1},
  {1,0,0,0,0,0,1},
};
long i;

void setup() {
  size (400, 600);
}

void draw() {
  // draw the background
  background(#FEFFD1);                  //Yellow

  // draw the block
  stroke(0);
  fill(#FF8B8D) ;                       //Red  
  for (int x = 0; x < 7; x++) {
    for (int y = 0; y < 5; y++) {
      if (block[y][x] == 1)
        rect(width / 7 * x, height / 4 * (y-1) + i, width/7, height/4);
    }
  } 
  if (i >= height/4) {
    i = 0;
    float rand = round(random(1, 6));
    println(rand);
    for (int x = 0; x < 7; x++) {
      for (int y = 4; y > 0; y--)  
        block[y][x] = block[y-1][x]; 
      // creat a new random row
      if (x != rand)
        block[0][x] = 1;
      else
        block[0][x] = 0;
    }
   
  }


  // draw the ball
  noStroke();
  fill(#948BFF);                        //Blue
  ellipse(mouseX, height - 50, 30, 30);

  // make the block sink down
  i++;
}
