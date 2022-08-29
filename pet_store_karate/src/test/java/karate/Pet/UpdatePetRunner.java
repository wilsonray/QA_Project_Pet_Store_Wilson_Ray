package karate.Pet;

import com.intuit.karate.junit5.Karate;

public class UpdatePetRunner {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/Pet/EP2_UpdatePet/UpdatePet.feature").relativeTo(getClass());
    }
}

