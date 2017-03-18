class PagesController < ApplicationController
  
  def home
  end

  def result
    @date1 = params[:date1]
    @date2 = params[:date2]
    # @date2 = params[:date2] || Date.today
    puts "fist date is #{@date1}"
    puts @date2
    @information = Information.where("dist_from_la <= mag * 100 AND (time BETWEEN '#{@date1}' and '#{@date2}')").order("time").limit 10
  end

end