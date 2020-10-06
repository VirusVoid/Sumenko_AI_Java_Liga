package lesson3.clean_code;

public class Qube implements Shape3D {
    /**
     * Начальные координаты куба
     */
    private Double x;
    private Double y;
    private Double z;
    /**
     * Размер стороны куба
     */
    private Double edgeSize;

    public Qube(Double x, Double y, Double z, Double edgeSize) {
        this.x = x;
        this.y = y;
        this.z = z;
        this.edgeSize = edgeSize;
    }

    @Override
    public Double getX() {
        return null;
    }

    @Override
    public Double getY() {
        return null;
    }

    @Override
    public Double getZ() {
        return null;
    }

    @Override
    public Double getVolume() {
        return Math.pow(edgeSize, 3);
    }
}
