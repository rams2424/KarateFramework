package kdemo.features;
import com.intuit.karate.junit5.*;
public class UsersRunnerTest {

@Karate.Test
Karate testAll(){
    return Karate.run().relativeTo(getClass());

}

}
