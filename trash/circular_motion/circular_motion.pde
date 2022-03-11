int r = 150;
float a = 0;

void setup() {
    size(300, 300);
    ellipseMode(CENTER);
}

void draw() {
    fill(155, 50);
    noStroke();
    rect(0, 0, width, height);
    fill(255);
    translate(width / 2, height / 2);
    float x = 0;
    float y = 0;
    println(sin(a));
    x = sin(a) * r;
    y = cos(a) * r;
    strokeWeight(10);
    circle(x, y, 20);
    a += radians(1);
    if (a == TWO_PI) {
        print("adfs");
    }
}
