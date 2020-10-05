package lesson3.clean_code;

public class Square extends Point{
    private Double x;
    private Double y;
    /**
     * Размер стороны квадрата
     */
    private Double edgeSize;
    public Square(Double x, Double y, Double edgeSize) {
        super(x,y);
        this.edgeSize = edgeSize;
    }

    /**
     * Вычисление периметра квадрата
     * @return периметр квадрата
     */
    public Double getSquarePerimeter() {
        return 4 * edgeSize;
    }
}
