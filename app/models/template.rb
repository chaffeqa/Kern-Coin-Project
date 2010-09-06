class Template < ActiveRecord::Base
  belongs_to :node
  has_many :elements

  VIEW_NAMES = [
    "Home",
    "Right Inside"
  ]

  validates :template_name, :inclusion => { :in => VIEW_NAMES }

  def init_view
    view = nil
    unless self.template_name.empty?
      if self.template_name == "Right Inside"
        view = RightInsideView.create!
        self.view=view
      end
      if self.template_name == "Home"
        view = HomeView.create!
        self.view=view
      end
    end
    view
  rescue
    self.error.add(:template_name, "This template does not seem to exist, please choose another one.")
    return nil
  end

  def underscore_template_name
    template_name.gsub(/ /, '_').underscore
  end
end
