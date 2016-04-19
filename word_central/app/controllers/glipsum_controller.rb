class GlipsumController < ApplicationController

  def new
    render "new"
  end

  def create
    quotes = [
      "Leave the gun. Take the cannoli. Tattaglia is a pimp. He never could have outfought Santino. But I didn't know until this day that it was Barzini all along.",
      "Barzini is dead. So is Phillip Tattaglia. Moe Greene. Stracci. Cuneo. Today I settled all family business so don't tell me that you're innocent. Admit what you did. Only don't tell me that you're innocent. Because it insults my intelligence and it makes me very angry.",
      "You talk about vengeance. Is vengeance going to bring your son back to you, or my boy to me? I forgo the vengeance of my son. But I have selfish reasons. My youngest son was forced to leave this country because of this Sollozzo business. All right, now I have to make arrangements to bring him back here safely cleared of all these false charges. But I'm a superstitious man, and if some unlucky accident should befall him... if he should be shot in the head by a police officer, or if he should hang himself in his jail cell, or if he's struck by a bolt of lightning, then I'm going to blame some of the people in this room, and that I do not forgive. But, that aside, let me say that I swear, on the souls of my grandchildren, that I will not be the one to break the peace we have made here today."
    ]

    # name="glipsum[amount]"
    amount = params[:glipsum][:amount].to_i

    # name="glipsum[option]"
    option = params[:glipsum][:option]

    @paragraphs = []

    amount.times do
      @paragraphs.push(quotes.sample)
    end

    render "generated_text"
  end

end
