class Admin::EmployeesController < ApplicationController
  respond_to :html
  before_filter :get_employee, :except => [:index, :create]
  layout 'admin'

  def index
    @employees = Employee.all(:order => `order`)
    respond_with(@employees)
  end
  
  def show
    respond_with(@employee)
  end
  
  def new
    respond_with(@employee)
  end
  
  def edit
    respond_with(@employee)  
  end

  def update
    if @employee.update_attributes(params[:employee])
      redirect_to [:admin, @employee], notice: 'Staff was successfully updated.'
    else
      render :action => 'edit'
    end
  end

  def create
    @employee = Employee.new(params[:employee])
    if @employee.save
      redirect_to [:admin, @employee], notice: 'Staff was successfully created.'
    else
      flash[:alert] = "bummer..."
      render :action => 'new'
    end
  end
  
  def destroy
    @employee.destroy
    redirect_to admin_employees_url, :notice => "Deleted..."
  end

  private
    def get_employee
      @employee = params[:id].present? ? Employee.find(params[:id]) : Employee.new
    end
end