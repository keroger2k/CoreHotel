class EmployeeController < ApplicationController
  respond_to :html

  def index
  	@employees = Employee.all
    respond_with(@employees)
  end
  
end
