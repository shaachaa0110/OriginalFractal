void setup(){
	size(600, 600);
}
public void draw(){
	background(48, 139, 206);
	myFractal(300, 300, 300, 147);
}
public void myFractal(float x, float y, float rad, int greenness){
	fill(230, greenness, 32);
	ellipse(x, y, rad, rad);
	if(rad > 10){
		myFractal(x-rad/2, y, rad/2, greenness + 10);
		myFractal(x+rad/2, y, rad/2, greenness + 10);
	}
}