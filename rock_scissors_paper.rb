class RockScissorsPaper
  ANSWERS = [:rock, :scissors, :paper]

  def initialize(user_choice)
    @user_choice = user_choice.upcase
    @computer_choice = ANSWERS.sample
  end

  def show_winner
    if @computer_choice == @user_choice
      :nobody
    elsif @computer_choice == :rock && @user_choice == "P" ||
          @computer_choice == :paper && @user_choice == "S" ||
          @computer_choice == :scissors && @user_choice == "R"
      :user
    else
      :computer
    end
  end

  def user_choice
    @user_choice
  end

  def computer_choice
    @computer_choice
  end
end
