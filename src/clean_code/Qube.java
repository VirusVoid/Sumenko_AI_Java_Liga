package clean_code;

public class Qube extends Point implements Shape3D{
    private Double x;
    private Double y;
    private Double z;
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