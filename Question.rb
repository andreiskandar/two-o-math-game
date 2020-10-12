def get_random_number
  rand(1..20)
end

class Question
  # generate two random numbers and answer
  attr_accessor :num1, :num2, :answer
  def initialize
    @num1 = get_random_number
    @num2 = get_random_number
    @answer = @num1 + @num2
  end

  def question
    "What is #{num1} plus #{num2} equal?"
  end

end

