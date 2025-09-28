class Calculator;

    // Constructor
    function new();
        $display("Calculator Object Created at time %0t", $time);
    endfunction

    // Task for addition
    task add(input real a, input real b, output real result);
        result = a + b;
    endtask

    // Task for subtraction
    task sub(input real a, input real b, output real result);
        result = a - b;
    endtask

    // Task for multiplication
    task multi(input real a, input real b, output real result);
        result = a * b;
    endtask

    // Task for division
    task div(input real a, input real b, output real result);
        if (b == 0.0) begin
            $display("Error: Division by zero!");
            result = 0.0;
        end
        else result = a / b;
    endtask

    // ---------- Static Task Example ----------
    static task power(input real base, input int exp, output real result);
        result = 1.0;
        for (int i = 0; i < exp; i++) begin
            result = result * base;
        end
    endtask

endclass
