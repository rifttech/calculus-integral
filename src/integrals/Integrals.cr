module Integrals extend self
    def riemann(a : Float32, b : Float32, step : Float32, precision : Int32 = 2) : Float32
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
end