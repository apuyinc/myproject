package reqres.register;

import com.intuit.karate.junit5.Karate;

class RegisterRunner {
    
    @Karate.Test
    Karate testUsers() {
        return new Karate().feature("register").relativeTo(getClass());
    }    

}
