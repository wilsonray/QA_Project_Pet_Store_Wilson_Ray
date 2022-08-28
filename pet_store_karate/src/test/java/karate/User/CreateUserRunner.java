package karate.User;

import com.intuit.karate.junit5.Karate;

public class CreateUserRunner {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/User/EP1_CreateUser/CreateUser.feature").relativeTo(getClass());
    }
}
