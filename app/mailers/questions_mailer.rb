class QuestionsMailer < ActionMailer::Base
  default :to => "chaffee.development@gmail.com"

  def question_submital(question)
    @question = question
    mail(:from => "#{@question.last_name}, #{@question.first_name}  <#{@question.subject}>", :subject => "Submitted Message")
  end
end
