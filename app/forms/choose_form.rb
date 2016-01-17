class ChooseForm < Reform::Form
  property :disposition
  validates :disposition, presence: true

  # http://guides.rubyonrails.org/active_record_validations.html#conditional-validation
  property :sith_name
  validates :sith_name, presence: true, if: :dark?
  property :jedi_name
  validates :jedi_name, presence: true, if: :light?

  def light?
    disposition == "light"
  end

  def dark?
    disposition == "dark"
  end
end