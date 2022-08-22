package karate.request;

import com.intuit.karate.junit5.Karate;

public class FindPetById {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/request/FindPetById.feature").relativeTo(getClass());
    }
}
