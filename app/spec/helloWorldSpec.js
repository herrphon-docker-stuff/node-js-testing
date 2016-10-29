var request = require("request");
var helloWorld = require("../src/server.js")
var base_url = "http://localhost:3000/"

jasmine.getEnv().defaultTimeoutInterval = 500;


describe("Hello World Server", function() {
  
  describe("GET /", function() {
    
    it("returns status code 200", function(done) {
      request.get(base_url, function(error, response, body) {
        
        if (error) {
          expect(error).not.toBeDefined();
        } else {
          expect(response.statusCode).toBe(200);
        }
        expect(response).toBeDefined();
        done();  
        // use special done() callback from jasmine
        // https://github.com/mhevery/jasmine-node#async-tests
      }, 250); // timeout after 250 ms
    });

    it("returns Hello World", function(done) {
      request.get(base_url, function(error, response, body) {
        expect(body).toBe("Hello World");
        done();
      });
    });

  });

});
