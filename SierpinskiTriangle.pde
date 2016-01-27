public void setup()
{
	size(800,800);	
}
public void draw()
{
	sierpinski(0,0,800);
}
public void mouseDragged() //optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len >= 4){
		sierpinski(x, y + len/2, len/2);
		sierpinski(x + len, y +len/2, len/2);
		sierpinski(x + len/2, y - len/2, len/2);
	}else{
		fill(163, 0, 100);
		noStroke();
		triangle(x, y + len, x + len, y + len, x + len/2, y);
	}
}
