function fn() {   
   
  var env = karate.env; // get system property 'karate.env'

  karate.log('karate.env system property was:', env);

  if (!env) {
    env = 'dev';
  }
  var config = {
    baseUrl : 'https://reqres.in/api/'
  };

  if (env == 'dev') {
    // customize
    baseUrl = 'https://reqres.in/api/';
  } else if (env == 'e2e') {
    baseUrl = 'https://reqres.in/api/';
  }
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);

  return config;
}