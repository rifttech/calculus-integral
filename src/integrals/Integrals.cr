# 
# Integral Calculus
#
#
module Integrals extend self
    
    #
    # Left Riemann Sum
    #
    #
    def riemann_left(a : Float32, b : Float32, step : Float32, precision : Int32 = 2) : Float32
        dx = (b-a) / step
        i = a
        sum = 0.0_f32    
        while i <= b 
            f = yield i
            i += dx
            sum += dx * f
        end
        sum.round precision
    end

    #
    # Right Riemann Sum
    #
    #
    def riemann_right(a : Float32, b : Float32, step : Float32, precision : Int32 = 2) : Float32
        dx = (b-a) / step
        i = a
        sum = 0.0_f32    
        while i <= b 
            i += dx
            f = yield i
            sum += dx * f
        end
        sum.round precision
    end

    #
    # Midpoint Rule
    #
    #
    def riemann_midpoint(a : Float32, b : Float32, step : Float32, precision : Int32 = 2) : Float32
        dx = (b-a) / step
        sum = 0.0_f32
        count = 1.0;    
        while count < step 
            f = yield a + dx * (count + 0.5)
            count = count + 1.0
            sum += f
        end
        (sum * dx).round precision
    end

    #
    # Trapezoidal Sum
    #
    #
    def trapezoidal_rule(a : Float64, b : Float64, step : Int32, precision : Int32 = 2) : Float64
        dx = (b - a) / step
        result = 0.5 * ((yield a) + (yield b))
        i = 1
        while (i < step)
            result += yield (a + dx * i)
            i = i + 1
        end
        (result * dx).round precision
    end
end