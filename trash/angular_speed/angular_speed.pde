PVector v;
int offset = 0;
void setup() {
    size(1000, 800);
    v = new PVector(width / 2, height / 2);
}

void draw() {
    offset = offset + 1;
    background(51);
    PVector p = new PVector();
    p = PVector.fromAngle(radians(offset));
    v.add(p);
    circle(v.x, v.y, 25);
}
