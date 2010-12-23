class QuestionsMailer < ActionMailer::Base
  default :to => "chaffee.development@gmail.com"

  def question_submital(question)
    @question = question
    mail(:from => "#{@question.first_name} #{@question.last_name} <#{@question.email}>", :subject => "Submitted Message")
  end
end
