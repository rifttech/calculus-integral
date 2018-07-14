require "spec"
require "../../src/integrals/Integrals.cr"

describe Integrals do
    describe "#riemann" do
        it "calcs riemann summ" do
            result = Integrals.riemann(4.0, 10.0, 1000.0, 3) do |x|
                x * x
            end
            puts "result is #{result}"
        end
    end
end