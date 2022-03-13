PVector loc = new PVector(0, 0);
PVector vel = new PVector(0, 0);
int r = 30;

void setup() {
    size(800, 600);
}

void draw() {
    background(155);

    PVector mouse = new PVector(mouseX, mouseY);
    PVector dir = PVector.sub(mouse, loc);
    dir.normalize();
    dir.mult(0.3);

    vel.add(dir);
    vel.limit(4);

    loc.add(vel);

    circle(loc.x, loc.y, r);
}
