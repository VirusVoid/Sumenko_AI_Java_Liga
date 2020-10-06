package lesson3.clean_code;

public class Square extends Shape2D {
    /**
     * Размер стороны квадрата
     */
    private Double edgeSize;

    public Square(Double x, Double y, Double edgeSize) {
        super(x,y);
        this.edgeSize = edgeSize;
    }

    @Override
    public Double getArea() {
        return edgeSize * edgeSize;
    }
}
