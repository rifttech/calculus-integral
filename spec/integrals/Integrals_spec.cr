require "spec"
require "../../src/integrals/Integrals.cr"

describe Integrals do
    describe "#riemann" do
        it "calcs riemann left summ" do
            result = Integrals.riemann_right(4.0, 10.0, 1000.0, 3) do |x|
                x * x
            end
            puts "riemann right summ is #{result}"
        end
    end

    describe "#riemann" do
        it "calcs riemann left summ" do
            result = Integrals.riemann_left(4.0, 10.0, 1000.0, 3) do |x|
                x * x
            end
            puts "riemann left sum is #{result}"
        end
    end

    describe "#riemann_midpoit" do
        it "calcs midpoint rule" do
            result = Integrals.riemann_midpoint(4.0, 10.0, 1000.0, 3) do |x|
                x * x
            end
            puts "riemann_midpoit is #{result}"
        end
    end

    describe "#trapezoidal_rule" do
        it "calcs trapezoidal_rule" do
            result = Integrals.trapezoidal_rule(4.0, 10.0, 1000, 3) do |x|
                x * x
            end
            puts "trapezoidal_rule is #{result}"
        end
    end
    
end