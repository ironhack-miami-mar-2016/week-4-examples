class Concert < ActiveRecord::Base

  # Returns the concerts this month
    # @this_months_concerts = Concert.this_month

  def self.this_month
    # greater than the first day of the month
    # less than the last day of the month

    beginning_of_month = Date.today.beginning_of_month
    end_of_month = Date.today.end_of_month.end_of_day

    Concert.where("date > ?", beginning_of_month)
           .where("date < ?", end_of_month)
  end

  # Return the concerts today
    # @todays_concerts = Concert.today

  def self.today
    # greater than this morning at 12:01 am
    # less than tonight at 11:59 pm


    beginning_of_day = Date.today.beginning_of_day
    end_of_day = Date.today.end_of_day

    Concert.where("date > ?", beginning_of_day)
           .where("date < ?", end_of_day)
  end

end
