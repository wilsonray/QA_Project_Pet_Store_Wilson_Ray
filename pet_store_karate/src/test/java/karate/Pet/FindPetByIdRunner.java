package karate.Pet;

import com.intuit.karate.junit5.Karate;

public class FindPetByIdRunner {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/EP3_FindPetById/FindPetById.feature").relativeTo(getClass());
    }
}
