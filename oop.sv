// ------------------------------
// Abstraction: Base abstract class
// ------------------------------
virtual class Shape;  
  // Encapsulation: private variable
  protected string name;

  // Constructor
  function new(string n);
    name = n;
  endfunction

  // Pure virtual method (must be overridden)
  pure virtual function void draw();

  // Normal method
  function void printName();
    $display("Shape Name = %s", name);
  endfunction
endclass

// ------------------------------
// Inheritance: Circle extends Shape
// ------------------------------
class Circle extends Shape;
  int radius;

  // Constructor
  function new(string n, int r);
    super.new(n); // Call parent constructor
    radius = r;
  endfunction

  // Polymorphism: overriding virtual method
  function void draw();
    $display("Drawing Circle with radius %0d", radius);
  endfunction
endclass

// ------------------------------
// Inheritance: Rectangle extends Shape
// ------------------------------
class Rectangle extends Shape;
  int width, height;

  // Constructor
  function new(string n, int w, int h);
    super.new(n);
    width  = w;
    height = h;
  endfunction

  // Polymorphism: overriding virtual method
  function void draw();
    $display("Drawing Rectangle: width=%0d, height=%0d", width, height);
  endfunction
endclass

// ------------------------------
// Parameterized Class Example

class Storage #(type T = int);
  T data;

  function new(T d);
    data = d;
  endfunction

  function void show();
    $display("Stored data = %0p", data);
  endfunction
endclass

// ------------------------------
// Testbench to demonstrate OOP
// ------------------------------
module tb;
  initial begin
    // Polymorphism: handle to base class
    Shape s;

    // Object 1: Circle
    s = new Circle("MyCircle", 5);
    s.printName();
    s.draw();

    // Object 2: Rectangle
    s = new Rectangle("MyRect", 10, 20);
    s.printName();
    s.draw();

    // Parameterized class usage
    Storage #(int) st1 = new(42);
    Storage #(string) st2 = new("Hello OOP");

    st1.show();
    st2.show();
  end
endmodule
