Rails.application.routes.draw do

  get("/", { :controller => "addition", :action => "show_addition_form" })

  get("/add", { :controller => "addition", :action => "show_addition_form" })
  get("/wizard_add", { :controller => "addition", :action => "add_these" })

  get("/subtract", { :controller => "subtraction", :action => "show_sub_form" })
  get("/wizard_subtract", { :controller => "subtraction", :action => "subtract" })

  get("/multiply", { :controller => "multiplication", :action => "show_multiplication_form" })
  get("/wizard_multiply", { :controller => "multiplication", :action => "multiply" })

  get("/divide", { :controller => "division", :action => "show_division_form" })
  get("/wizard_div", { :controller => "division", :action => "divide_these" })

end
