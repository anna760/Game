int x=250; // Horizontal position of ball
int direction_x=2; // Change in horizontal position each time draw() executed
int y=150; // Vertical position of ball
int direction_y=2; // Change in horizontal position each time draw() executed

int lives=3;
int score=0;

void setup()
{
 size(400,400); // Create a window 400x400 pixels
}
void draw()
{
 background(255,255,255); // Clear screen to white
 fill(0,0,200); // Set fill colour to red
 rect(0,mouseY-60,20,120); // Position rectangle using mouse
 
 fill(255,0,0);
 ellipse(x,y,20,20);
 
 y=y+direction_y; //New position equals old position plus change in direction
 if(y<10) direction_y=-direction_y;
 if(y>(height-10)) direction_y=-direction_y; 
 x=x+direction_x;
 if(x>(width-10)) direction_x=-direction_x;
 if(x<10) // If ball hits left of screen then miss..
 {
 direction_x=-direction_x; // Bounce
 lives--; // Reduce lives by one
 if(lives==0) exit(); // If lives is zero then quit
 } 
 if(x<(30) && (abs(mouseY-y)<60)) // If ball has bit paddle then..
 {
 direction_x=-direction_x; // Bounce
 score++; // Increase score by one
 }

 textSize(32);
 fill(0,0,255);
 text(score, 10, 30); // Display score
 text(lives,height-30, 30); // Display lives
}
