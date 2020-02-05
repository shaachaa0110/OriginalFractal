int redness = 250;
int blueness = 250;
void setup(){
	size(600, 600);
}
public void draw(){
	background(0);
	myFractal(450, 300, 150, 147);
	myFractal(150, 300, 150, 147);
	myFractal(300, 150, 150, 147);
	myFractal(300, 450, 150, 147);
}
public void myFractal(float x, float y, float rad, int greenness){
	fill(redness, greenness, blueness);
	ellipse(x, y, rad, rad);
	if(rad > 10){
		myFractal(x-rad/2, y, rad/2, greenness + 20);
		myFractal(x+rad/2, y, rad/2, greenness + 20);
		myFractal(x, y-rad/2, rad/2, greenness + 20);
		myFractal(x, y+rad/2, rad/2, greenness + 20);
	}
}
public void mouseDragged(){
	redness = mouseX;
	blueness = mouseY;
}