class Changer

  def self.make_change(user_input)

    change = []

    while user_input > 0 do
      if user_input >= 25
      user_input = user_input - 25
      change << 25

      elsif user_input < 25 && user_input >= 10
      user_input = user_input - 10
      change << 10

      elsif user_input < 10 && user_input >= 5
      user_input = user_input - 5
      change << 5

      elsif user_input < 5
      user_input = user_input - 1
      change << 1
      end
    end
    change
  end
end
