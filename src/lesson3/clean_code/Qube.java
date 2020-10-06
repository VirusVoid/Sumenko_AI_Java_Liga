package lesson3.clean_code;

public class Qube extends Shape3D {
    /**
     * Размер стороны куба
     */
    private Double edgeSize;

    public Qube(Double x, Double y, Double z, Double edgeSize) {
        super(x,y,z);
        this.edgeSize = edgeSize;
    }

    @Override
    public Double getVolume() {
        return Math.pow(edgeSize, 3);
    }
}
