package lesson3.clean_code;

/**
 * Класс, описывающий объемные фигуры
 */
public abstract class Shape3D {
    /**
     * Начальные координаты объемной фигуры
     */
    private Double x;
    private Double y;
    private Double z;

    public Shape3D(Double x, Double y, Double z) {
        this.x = x;
        this.y = y;
        this.z = z;
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
    /**
     * Вычисление объема фигуры
     * @return объем фигуры
     */
    public abstract Double getVolume();
}
