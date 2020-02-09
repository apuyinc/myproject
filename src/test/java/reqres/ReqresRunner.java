package reqres;

import com.intuit.karate.junit5.Karate;

class ReqresRunner {
    
    @Karate.Test
    Karate testAll() {
        return new Karate().relativeTo(getClass());
    }    


}
