import com.cycling74.max.MaxObject;

public class zscore extends MaxObject {

    public zscore() {
        post("zscore initialised");
    }

    public void bang() {
        outlet(0, "zscore received bang");
    }
}
