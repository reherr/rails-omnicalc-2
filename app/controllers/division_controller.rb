class DivisionController < ApplicationController
  def show_division_form
    render({ :template => "division_templates/division_form" })
  end

  def divide_these
    @first_number = params.fetch("first_num")
    @second_number = params.fetch("second_num").to_f

    @result =  @first_number / @second_number

    if @second_num != 0
      if (@first_num % @second_num) == 0
        puts @first_num / @second_num
      else
        @result = @first_num / @second_num
        @formatted_result = sprintf("%.16f", @result)
        puts @formatted_result
      end
    else
      puts "Infinity"
    end

    render({ :template => "division_templates/divide_results" })
  end
end
