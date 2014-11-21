class Link {

  //variables
  float startXup, endXup, startXdown, endXdown, newY1;
  float startYup, endYup, startYdown, endYdown, newY2;

  //constructor
  Link (float x1new, float x2new) {
    endXup = x1new;
    endXdown = x2new;
  }

  //functions
  void update() {
    // here is where I use the library
    // you can try to change the easing effect
    // you can find a list of it here:
    // http://www.looksgood.de/libraries/Ani/Ani_Cheat_Sheet.pdf
    
    Ani.to(this, 0.05, "startXup", endXup, Ani.EXPO_IN_OUT);
    Ani.to(this, 0.05, "startXdown", endXdown, Ani.EXPO_IN_OUT);
  }

  void draw() {
    stroke(0);
    strokeWeight(2);
    bezier(startXup, y1, startXup, cy1, startXdown, cy2, startXdown, y2); //links lines 
    strokeWeight(1);
    stroke(255, 0, 0);
    line (startXup, y1, startXup, newY1); //red lines connecting the numbers
    line (startXdown, y2, startXdown, newY2); //red lines connecting the numbers
    text((int)startXup, startXup, newY1); //text numbers for reading the X values
    text((int)startXdown, startXdown, newY2); //text numbers for reading the X values
  }
//function for generate new values
  void genvalnew() {
    endXup = int(random(20, 380));
    endXdown = int(random(20, 380));
  }
//add a certain amount to the Y axis for the text numbers
  void addYtext (float Y1, float Y2) {
    newY1 = Y1;
    newY2 = Y2;
    //println(newY1);
  }
}

