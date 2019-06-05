class DevicesController < ApplicationController
  def index
    @devices = Device.all

    render("device_templates/index.html.erb")
  end

  def show
    @review = Review.new
    @device = Device.find(params.fetch("id_to_display"))

    render("device_templates/show.html.erb")
  end

  def new_form
    @device = Device.new

    render("device_templates/new_form.html.erb")
  end

  def create_row
    @device = Device.new

    @device.description = params.fetch("description")
    @device.photo = params.fetch("photo") if params.key?("photo")
    @device.company_id = params.fetch("company_id")
    @device.category_id = params.fetch("category_id")

    if @device.valid?
      @device.save

      redirect_back(:fallback_location => "/devices", :notice => "Device created successfully.")
    else
      render("device_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_company
    @device = Device.new

    @device.description = params.fetch("description")
    @device.photo = params.fetch("photo") if params.key?("photo")
    @device.company_id = params.fetch("company_id")
    @device.category_id = params.fetch("category_id")

    if @device.valid?
      @device.save

      redirect_to("/companies/#{@device.company_id}", notice: "Device created successfully.")
    else
      render("device_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_category
    @device = Device.new

    @device.description = params.fetch("description")
    @device.photo = params.fetch("photo") if params.key?("photo")
    @device.company_id = params.fetch("company_id")
    @device.category_id = params.fetch("category_id")

    if @device.valid?
      @device.save

      redirect_to("/categories/#{@device.category_id}", notice: "Device created successfully.")
    else
      render("device_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @device = Device.find(params.fetch("prefill_with_id"))

    render("device_templates/edit_form.html.erb")
  end

  def update_row
    @device = Device.find(params.fetch("id_to_modify"))

    @device.description = params.fetch("description")
    @device.photo = params.fetch("photo") if params.key?("photo")
    @device.company_id = params.fetch("company_id")
    @device.category_id = params.fetch("category_id")

    if @device.valid?
      @device.save

      redirect_to("/devices/#{@device.id}", :notice => "Device updated successfully.")
    else
      render("device_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_company
    @device = Device.find(params.fetch("id_to_remove"))

    @device.destroy

    redirect_to("/companies/#{@device.company_id}", notice: "Device deleted successfully.")
  end

  def destroy_row_from_category
    @device = Device.find(params.fetch("id_to_remove"))

    @device.destroy

    redirect_to("/categories/#{@device.category_id}", notice: "Device deleted successfully.")
  end

  def destroy_row
    @device = Device.find(params.fetch("id_to_remove"))

    @device.destroy

    redirect_to("/devices", :notice => "Device deleted successfully.")
  end
end
