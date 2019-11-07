class Oyestercard

Limit = 90
    attr_reader :balance

    def initialize()
        @balance = 0
    end
    def topup(amount)
      if @balance + amount > Limit
        raise "Please limit your amount to 90"
      else
          @balance += amount
      end
    end
  end
