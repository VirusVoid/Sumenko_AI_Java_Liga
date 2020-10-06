package lesson3.clean_code;

public class Square implements Shape2D {
    /**
     * Начальные координаты квадрата
     */
    private Double x;
    private Double y;
    /**
     * Размер стороны квадрата
     */
    private Double edgeSize;

    public Square(Double x, Double y, Double edgeSize) {
        this.x = x;
        this.y = y;
        this.edgeSize = edgeSize;
    }

    @Override
    public Double getX() {
        return x;
    }

    @Override
    public Double getY() {
        return y;
    }

    @Override
    public Double getArea() {
        return edgeSize * edgeSize;
    }
}
