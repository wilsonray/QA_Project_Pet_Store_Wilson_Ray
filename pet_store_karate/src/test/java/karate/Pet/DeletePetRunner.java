package karate.Pet;

import com.intuit.karate.junit5.Karate;

public class DeletePetRunner {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/Pet/EP4_DeletePet/DeletePet.feature").relativeTo(getClass());
    }
}

