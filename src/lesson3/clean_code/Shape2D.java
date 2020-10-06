package lesson3.clean_code;

/**
 * Класс, описывающий фигуры в двухмерном пространстве
 */
public abstract class Shape2D {
    /**
     * Начальные координаты фигуры
     */
    private Double x;
    private Double y;

    public Shape2D(Double x, Double y) {
        this.x = x;
        this.y = y;
    }

    public Double getX() {
        return x;
    }

    public Double getY() {
        return y;
    }
    /**
     * Вычисление площади фигуры
     * @return площадь фигуры
     */
    public abstract Double getArea();
}
