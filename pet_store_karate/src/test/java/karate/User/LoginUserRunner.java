package karate.User;

import com.intuit.karate.junit5.Karate;

public class LoginUserRunner {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/User/EP2_LoginUser/LoginUser.feature").relativeTo(getClass());
    }
}