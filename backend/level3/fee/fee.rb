module Fee
  class Fee
    attr_reader :name, :amount

    def initialize(name, amount)
      @name = name 
      @amount = amount
    end
  end
end