int x = 0;
int y = 20;
char sentido = 'D';

void setup() {
  size(400, 200);  
  stroke(#D60DFF);
  strokeWeight(7);
}
void draw() {
  background(#21EA73);  
  ellipse(x, y, 40, 40);
  
  if (sentido == 'D' && x <= 400){
    x = x + 2;
  } else if (sentido == 'E' && x >= 0){
    x = x - 2;
  } else if (sentido == 'D' && x > 400){
    sentido = 'E';    
  } else if (sentido == 'E' && x < 0){
    sentido = 'D';
  }     
}
