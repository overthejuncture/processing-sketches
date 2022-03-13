PVector loc;
PVector dir;
float a = HALF_PI;
int scale = 20;

void setup() {
    size(800,400);
    loc = new PVector(0, height / 2);
}

void draw() {
    background(155);
    // sin(a) when a is HALF_PI = 1, so y start increasing right away
    // and pushes circle down, as y points down, being inverted
    dir = new PVector(1, sin(a) * scale);
    loc.add(dir);
    circle(loc.x, loc.y, 50);
    // frameRate is 60, so it takes 360 / (60 * 60) = 1 second
    a += radians(6);
}
