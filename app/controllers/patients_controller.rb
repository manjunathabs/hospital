class PatientsController < ApplicationController

 def print_reg_slip
 
  raise params.inspect


 end

 def show
  
  @patient = Patient.find_by_id(params[:id])

 end

end
