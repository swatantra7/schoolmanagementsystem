class Admin::StudentsController < AdminController

  before_action :find_student, only: [:show, :edit, :destroy, :update]

  def new
    @resource = @student = Student.new
    @address = @student.build_address 
  end

  def index
    @students = Student.all
  end

  def create
    debugger
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
    debugger
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
      :id,
      :fname,
      :mname,
      :age,
      :password,
      :email,
      :confirm_password,
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
      :aadhar_number,
      ],
      results_attributes: [
        :klass,
        :semester,
        :result,
        :_destroy
      ],
      admidcards_attributes: [
        :klass,
        :semester,
        :admidcard,
        :_destroy
      ]
    )
  end

  def find_student
    @resource = @student = Student.find(params[:id])
  end

end



