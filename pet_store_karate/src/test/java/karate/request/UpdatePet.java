package karate.request;

import com.intuit.karate.junit5.Karate;

public class UpdatePet {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/EP2_UpdatePet/UpdatePet.feature").relativeTo(getClass());
    }
}

