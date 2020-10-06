package lesson3.clean_code;

/**
 * Интерфейс для описания фигур в двумерном пространстве
 */
public interface Shape2D {
    /**
     * Получение начальных координат фигуры
     * @return начальные координаты x,y
     */
    Double getX();
    Double getY();
    /**
     * Вычисление площади фигуры
     * @return площадь фигуры
     */
    Double getArea();
}
