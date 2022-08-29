package karate.Pet;

import com.intuit.karate.junit5.Karate;

public class AddPetRunner {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/Pet/EP1_AddPet/AddPet.feature").relativeTo(getClass());
    }
}

