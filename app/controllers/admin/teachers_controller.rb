class Admin::TeachersController < ApplicationController
  before_action :find_teacher, only: [:show, :edit, :destroy, :update]

  def new
    @resource = @teacher = Teacher.new
    @address = @teacher.build_address 
  end

  def index
    @teachers = Teacher.all
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      flash[:notice] = t('.teacher_created_sucessfully')
      redirect_to admin_teachers_path
    else
      flash[:notice] = t('.sudent_not_created')
      redirect_to new_admin_teacher_path
    end
  end

  def edit
  end

  def update
    if @teacher.update_attributes(teacher_params)
      redirect_to admin_teachers_path
      flash[:notice] = t('.teacher_updated_successfully')
    else
      flash[:notice] = t('.sudent not updated')
    end
  end

  def destroy
    if @teacher.destroy
      flash[:sucess] = t('.teacher deleted sucessfully')
      redirect_to admin_teachers_path
    else
      flash[:alert] = t('.teacher not deleted successfully')
      redirect_to admin_teacher_path
    end
  end

  private

  def teacher_params
    params.require(:teacher).permit(
      :id,
      :fname,
      :mname,
      :age,
      address_attributes:[
      :id,
      :villege, 
      :po, 
      :dist, 
      :state, 
      :pincode, 
      :mobile, 
      :email_id, 
      :dob, 
      :session, 
      :aadhar_number
      ]
    )
  end

  def find_teacher
    @resource = @teacher = Teacher.find(params[:id])
  end

end
