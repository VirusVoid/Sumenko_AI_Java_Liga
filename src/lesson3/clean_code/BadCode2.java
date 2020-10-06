package lesson3.clean_code;

/**
 * Основной класс, демонстрирующий работу с классами куб и квадрат
 */
public class BadCode2 {
    public static void main(String... args) {
        Qube qube = new Qube(1d, 1d, 1d, 10d);
        System.out.println("Qube volume: " + qube.getVolume());

        Square square = new Square(1d, 1d, 5d);
        System.out.println("Square area: " + square.getArea());
    }
}
