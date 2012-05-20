class Admin::EmployeeController < ApplicationController
  respond_to :html
  layout 'admin'

  def index
  	@employees = Employee.all
    respond_with(@employees)
  end

  def show
  end
  
  def new
  end
  
  def create
  end
  
  def edit
  end
  
  def update
  end

  def destroy
  end
  
end