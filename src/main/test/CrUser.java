import java.util.Map;

/**
 * Created by wz on 2017/8/18.
 */
public class CrUser {
    private int limit;   //页面大小
    private int offset;

    private Map map;

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }

    public int getOffset() {
        return offset;
    }

    public void setOffset(int offset) {
        this.offset = offset;
    }

    public Map getMap() {
        return map;
    }

    public void setMap(Map map) {
        this.map = map;
    }
}
