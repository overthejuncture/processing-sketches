PVector loc = new PVector(400, 200);
PVector vel = new PVector(4, 4);
int d = 80;
int r = d / 2;

void setup() {
    size(800, 400);
}

void draw() {
    background(155);
    loc.add(vel);
    if (loc.x > width - r || loc.x < r) {
        vel.x *= -1;
    }
    if (loc.y > height - r || loc.y < r) {
        vel.y *= -1;
    }
    circle(loc.x, loc.y, d);
}
