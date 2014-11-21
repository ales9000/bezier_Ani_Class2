
// example how to use the ani library in an array
// to use the library you should create an object
// that contain the ani effect and create an array of this object
// the ani library by Benedikt Gross: http://www.looksgood.de/
// library referencies and links: http://www.looksgood.de/libraries/Ani/

// alessandro masserdotti
// dotdotdot.it


import de.looksgood.ani.*;

float y1= 100;
float cy1 = 200;
float y2 = 300;
float cy2 = 200;
int lNum = 10;

ArrayList<Link> links = new ArrayList<Link>(); //generate an array of object to use ani library

void setup() {
  smooth(4);
  size(400, 400);
  noFill();
  for (int i = 0; i<lNum; i++) {
    Link l = new Link(int(random(20, 380)), int(random(20, 380))); // fill first the array
    links.add(l); // add the array to the arraylist
  }
  Ani.init(this);  //initialize the library
}

void draw() { 
  background(127);
  text (frameRate, 10, 20);
  for (int i = 0; i<links.size (); i++) {
    links.get(i).update();
    links.get(i).draw();
    links.get(i).addYtext(100-(i*10), 310+(i*10));
  }
}

// generate a new values when press r key on the keybord

void keyReleased() {
  if (key == 'r' || key == 'R') {
    for (int i = 0; i<links.size (); i++) {
      links.get(i).genvalnew();
    }
  }
}



