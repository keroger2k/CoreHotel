class Admin::StaffsController < ApplicationController
respond_to :html
layout 'admin'

  # GET /admin/staffs
  # GET /admin/staffs.json
  def index
    @admin_staffs = Staff.all
    respond_with(@admin_staffs)
  end

  # GET /admin/staffs/1
  # GET /admin/staffs/1.json
  def show
    @admin_staff = Staff.find(params[:id])
    respond_with(@admin_staff)

  end

  # GET /admin/staffs/new
  # GET /admin/staffs/new.json
  def new
    @admin_staff = Staff.new
    respond_with(@admin_staff)
  end

  # GET /admin/staffs/1/edit
  def edit
    @admin_staff = Staff.find(params[:id])
    respond_with(@admin_staff)
  end

  # POST /admin/staffs
  # POST /admin/staffs.json
  def create
    @admin_staff = Staff.new(params[:staff])

    respond_to do |format|
      if @admin_staff.save
        format.html { redirect_to [:admin, @admin_staff], notice: 'Staff was successfully created.' }
        format.json { render json: @admin_staff, status: :created, location: @admin_staff }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/staffs/1
  # PUT /admin/staffs/1.json
  def update
    @admin_staff = Staff.find(params[:id])

    respond_to do |format|
      if @admin_staff.update_attributes(params[:admin_staff])
        format.html { redirect_to [:admin, @admin_staff], notice: 'Staff was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/staffs/1
  # DELETE /admin/staffs/1.json
  def destroy
    @admin_staff = Staff.find(params[:id])
    @admin_staff.destroy

    respond_to do |format|
      format.html { redirect_to admin_staffs_url }
      format.json { head :no_content }
    end
  end
end
