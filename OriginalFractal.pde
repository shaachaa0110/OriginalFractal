color backColor = color(48, 139, 206);
float rad = 300;
void setup(){
	size(600, 600);
}
public void draw(){
	background(backColor);
	myFractal(300, 300, rad, 147);
}
public void myFractal(float x, float y, float rad, int greenness){
	fill(230, greenness, 32);
	ellipse(x, y, rad, rad);
	if(rad > 5){
		myFractal(x-rad/2, y, rad/2, greenness + 10);
		myFractal(x+rad/2, y, rad/2, greenness + 10);
	}
}
public void mouseDragged(){
	backColor = color(255 - mouseX/2, 255 - mouseY/2, 206 - mouseX/2);
	rad = 600 - mouseX;
}