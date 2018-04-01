class Admin::StudentsController < AdminController

  before_action :find_student, only: [:show, :edit, :destroy, :update]

  def new
    @student = Student.new
  end

  def index
    @students = Student.all
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:notice] = t('.student_created_sucessfully')
      redirect_to admin_students_path
    else
      flash[:notice] = t('.sudent_not_created')
      redirect_to new_admin_student_path
    end
  end

  def edit
  end

  def update
    if @student.update_attributes(student_params)
      redirect_to admin_students_path
      flash[:notice] = t('.student_updated_successfully')
    else
      flash[:notice] = t('.sudent not updated')
    end
  end

  def destroy
    if @student.destroy
      flash[:sucess] = t('.student deleted sucessfully')
      redirect_to admin_students_path
    else
      flash[:alert] = t('.student not deleted successfully')
      redirect_to admin_student_path
    end
  end

  private

  def student_params
    params.require(:student).permit(
      :name,
      :class,
      :age
    )
  end

  def find_student
    @student = Student.find(params[:id])
  end

end
