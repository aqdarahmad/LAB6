`include "calculator.sv"

module tb;

    initial begin
        Calculator calc = new();

        real a = 10.0;
        real b = 5.0;

        $display("a = %0f, b = %0f", a, b);

        $display("Addition      = %0f", calc.add(a, b));
        $display("Subtraction   = %0f", calc.sub(a, b));
        $display("Multiplication= %0f", calc.multi(a, b));
        $display("Division      = %0f", calc.div(a, b));

        // Call static method
        $display("Power (2^5)   = %0f", Calculator::power(2.0, 5));
    end
endmodule
