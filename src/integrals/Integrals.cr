module Integrals extend self
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
end