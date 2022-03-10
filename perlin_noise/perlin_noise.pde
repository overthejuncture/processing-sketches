float xoff = 0;

void setup() {
    size(600, 400);
    colorMode(HSB, 255, 255, 255);
}

void draw() {
    loadPixels();
    float scale = 0.02;
    for (int x = 0; x < width; x++) {
        for (int y = 0; y < height; y++) {
            pixels[y * width + x] = 
                color(
                    map((x + xoff) % width, 0, width, 0, 255),
                    255,
                    map(noise((x + xoff)*scale, y*scale), 0, 1, 0, 255)
                );
        }
    }
    // to move along x axis
    xoff = xoff + 2;
    updatePixels();
}
