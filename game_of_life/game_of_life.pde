int cellsXNum;
int cellsYNum;
int[][] cells;
int cellSize = 20;
boolean recording;

void setup() {
    //size(200, 200);
    size(1000, 800);
    cellsXNum = width / cellSize;
    cellsYNum = height / cellSize;
    cells = new int[cellsXNum][cellsYNum];
    noStroke();
    fillCells(cells);
    recording = false;
    //frameRate(10);
}

void draw() {
    for (int i = 0; i < cells.length; i++) {
        for (int j = 0; j < cells[i].length; j++) {
            if (cells[i][j] == 1) {
                fill(255);
            } else {
                fill(0);
            }
            square(i * cellSize, j * cellSize, cellSize);
        }
    }
    if (recording) {
        saveFrame("gol/gol_####.png");
    }
    updateCells(cells);
}

int[][] updateCells(int[][] cells) {
    int[][] oldCells = cells.clone();
    for (int i = 0; i < cells.length; i++) {
        for (int j = 0; j < cells[i].length; j++) {
            cells[i][j] = checkCell(oldCells, i, j);
        }
    }
    return cells;
}

int checkCell(int[][] cells, int x, int y) {
    int neighbours = 0;
    int toReturn = 0;
    boolean alive = cells[x][y] == 1;
    for (int i = -1; i <= 1; i++) {
        for (int j = -1; j <= 1; j++) {
            int posX = x + i;
            int posY = y + j;
            if (posX < 0 || posX >= cellsXNum || posY < 0 || posY >= cellsYNum
                || (posX == x && posY == y)
            ) {
                continue;
            }
            if (cells[posX][posY] == 1) {
                neighbours++;
            }
        }
    }
    if (alive && neighbours > 1 && neighbours < 4) {
        toReturn = 1;
    }
    if (!alive && neighbours == 3) {
        toReturn = 1;
    }
    return toReturn;
}

int[][] fillCells(int[][] cells) {
    for (int i = 0; i < cells.length; i++) {
        for (int j = 0; j < cells[i].length; j++) {
            cells[i][j] = Math.round(random(0.53));
        } 
    }
    return cells;
}
