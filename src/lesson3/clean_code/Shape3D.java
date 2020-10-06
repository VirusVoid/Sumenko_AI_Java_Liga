package lesson3.clean_code;

/**
 * Интерфейс для описания объемных фигур
 */
public interface Shape3D {
    /**
     * Получение начальных координат фигуры
     * @return начальные координаты x,y,z
     */
    Double getX();
    Double getY();
    Double getZ();
    /**
     * Вычисление объема фигуры
     * @return объем фигуры
     */
    Double getVolume();
}
