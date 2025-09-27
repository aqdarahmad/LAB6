class Calculator;

    // Constructor
    function new();
        $display("Calculator Object Created at time %0t", $time);
    endfunction

    // Function for addition
    function real add(real a, real b);
        return a + b;
    endfunction

    // Function for subtraction
    function real sub(real a, real b);
        return a - b;
    endfunction

    // Function for multiplication
    function real multi(real a, real b);
        return a * b;
    endfunction

    // Function for division
    function real div(real a, real b);
        if (b == 0.0) begin
            $display("Error: Division by zero!");
            return 0.0;
        end
        else return a / b;
    endfunction

    // ---------- Static Method Example ----------
    static function real power(real base, int exp);
        real result = 1.0;
        int i;
        for (i = 0; i < exp; i++) begin
            result = result * base;
        end
        return result;
    endfunction

endclass
