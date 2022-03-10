PVector gravity = new PVector(0, 1);
ArrayList<Circle> circles = new ArrayList<Circle>();

void setup() {
    size(400, 400);
    strokeWeight(2);
}

void draw() {
    background(125);
    circles.add(create());
    // translate(width / 2, height / 2);
    for (int i = 0; i < circles.size(); i++) {
        circles.get(i).apply(gravity);
        circles.get(i).show();
    }
    println(circles.size());
}

Circle create() {
    return new Circle(new PVector(random(width), random(height)));
}
