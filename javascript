Constructor with closure:

    function Foo() {
      var text = "hello";
      function Bar() {};
      Bar.prototype = {
        hello: function() {
          console.log(text);
        }
      };
      return new Bar;
    }

    var foo = new Foo();
    foo.hello();
