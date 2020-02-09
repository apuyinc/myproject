package reqres.login;

import com.intuit.karate.junit5.Karate;

class LoginRunner {
    
    @Karate.Test
    Karate testLogin() {
        return new Karate().feature("login").relativeTo(getClass());
    }    

    @Karate.Test
    Karate testLoginSuccessfull() {
        return new Karate().feature("loginSuccessfull").relativeTo(getClass());
    }   

    @Karate.Test
    Karate testCallingAnotherFeature() {
        return new Karate().feature("callingAnotherFeature").relativeTo(getClass());
    }   
}
