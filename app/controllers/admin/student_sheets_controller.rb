class Admin::StudentSheetsController < AdminController

  def new
    @student_sheet = current_user.student_sheets.build
    @documents = @student_sheet.build_document
  end

  def create
    @student_sheet = current_user.student_sheets.new(student_sheet_params)
    if @student_sheet.save
      flash[:notice] = t('.sheet_uploaded_successfully')
      redirect_to admin_students_path   
    else
      flash[:alert] = t('.failed to upload sheet please try again !!!')
      redirect_to new_admin_student_sheet_path
    end
  end

  private

  def student_sheet_params
    params.fetch(:student_sheet, {}).permit(
      document_attributes:[
        :id,
        :document
      ]
    )
  end

end
