package lesson3.clean_code;

/**
 * Класс для инициализации начальной координаты фигуры
 */
public class Point {
    private Double x;
    private Double y;
    private Double z;

    public Point(Double x, Double y, Double z) {
        this.x = x;
        this.y = y;
        this.z = z;
    }

    public Point(Double x, Double y) {
        this(x,y,0.0);
    }

    public Double getX() {
        return x;
    }

    public Double getY() {
        return y;
    }

    public Double getZ() {
        return z;
    }
}