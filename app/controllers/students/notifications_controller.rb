class Students::NotificationsController < StudentsController

  def admid_cards
    @admid_cards = current_student.admidcards
  end

  def results
    @results = current_student.results
  end

end
