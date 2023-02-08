
  public void setup() {
     size(400, 400);
  }

  public void draw() {
    background((int) (Math.random() * 20) + 200, 0, 0);
    sierpinski(0, 400, 400);
  }

  public void mousePressed() { // optional
  }

  public void sierpinski(int x, int y, int len) {
    fill((int)(Math.random()*10)+235,(int)(Math.random()*10)+226, 10);
    int base = 20;
    if (len <= base) {
      triangle(x, y, x + len, y, x + len / 2, y - len);
    } else {
      sierpinski(x, y, len / 2);
      sierpinski(x + len / 2, y, len / 2);
      sierpinski(x + len / 4, y - len / 2, len / 2);
    }

  }
}
