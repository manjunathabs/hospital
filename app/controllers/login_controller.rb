class LoginController < ApplicationController
  def index

  end

  def login


 flash[:notice] = "sucessfull"
 render :action=>'login' ,:layout=>false

  end

  

  def create
  @patient = Patient.new(patient_params)
  if @patient.save
    flash[:notice] = "Registration Sucessfull"
    redirect_to @patient
  #  redirect_to '/patients/print_reg_slip'
  else
    flash[:notice] = "Registration Not Sucessfull"
    render 'login'
  end 

  end



  private

  def patient_params
  
   params.require(:patient).permit(:first_name,:last_name,:mobile_number,:gender,:address,:date_of_birth)
  end


  
end
