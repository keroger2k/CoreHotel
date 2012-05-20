class EmployeeController < ApplicationController
  respond_to :html

  def index
  	@employees = Employee.all
  end
  
end
