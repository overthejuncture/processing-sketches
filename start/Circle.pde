class Circle {
    PVector pos;
    PVector randomPower;
    Circle(PVector vector) {
        randomPower = new PVector(random(-1, 1), random(1));
        pos = vector;
    }

    void show() {
        noFill();
        this.pos.add(this.randomPower);
        circle(this.pos.x, this.pos.y, 50);
    }

    void apply(PVector vector) {
        this.pos.add(vector);
    }
}
