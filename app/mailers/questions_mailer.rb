class QuestionsMailer < ActionMailer::Base
  default :to => "from@example.com"

  def question_submital(question)
    @question = question
    mail(:from => "#{user.name} <#{user.email}>", :subject => "Registered")
  end
end
