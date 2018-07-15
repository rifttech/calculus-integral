require "./integrals/Integrals.cr"

#
# Library Facade
#
module Calculus extend self
    def trapezoidal_rule(a : Float64, b : Float64, step : Int32, precision : Int32 = 2) : Float64
        return Integrals.trapezoidal_rule(a, b, step, precision) {|x| yield x}
    end

    def riemann_left(a : Float32, b : Float32, step : Float32, precision : Int32 = 2) : Float32
        return Integrals.riemann_left(a, b, step, precision) {|x| yield x}
    end

    def riemann_right(a : Float32, b : Float32, step : Float32, precision : Int32 = 2) : Float32
        return Integrals.riemann_right(a, b, step, precision) {|x| yield x}
    end


    def riemann_midpoint(a : Float32, b : Float32, step : Float32, precision : Int32 = 2) : Float32
        return Integrals.riemann_midpoint(a, b, step, precision) {|x| yield x}
    end
end