public void setup() {
  size(800, 800);
  background(0);
  stroke(255);
  noFill();
  drawDiamond(width/2, height/2, 300);
}

public void drawDiamond(float x, float y, float size) {
  if (size < 8) {
    return;
  }

  float half = size / 2;

  quad(x, y - half, x + half, y, x, y + half, x - half, y);

  float newSize = size * 0.5;

  drawDiamond(x + half/2, y + half/2, newSize);
  drawDiamond(x - half/2, y + half/2, newSize);
  drawDiamond(x + half/2, y - half/2, newSize);
  drawDiamond(x - half/2, y - half/2, newSize);
}
