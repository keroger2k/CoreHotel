class EmployeesController < ApplicationController
  respond_to :html

  def index
  	@employees = Employee.all(:order => `order`)
    respond_with(@employees)
  end
  
end
