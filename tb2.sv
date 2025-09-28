`include "q2.sv"

module tb;

    initial begin
        Calculator calc = new();

        real a = 12.0;
        real b = 4.0;
        real result;

        $display("a = %0f, b = %0f", a, b);

        calc.add(a, b, result);
        $display("Addition      = %0f", result);

        calc.sub(a, b, result);
        $display("Subtraction   = %0f", result);

        calc.multi(a, b, result);
        $display("Multiplication= %0f", result);

        calc.div(a, b, result);
        $display("Division      = %0f", result);

        // Call static task
        Calculator::power(3.0, 4, result);
        $display("Power (3^4)   = %0f", result);
    end
endmodule
