class Registration::Form
  include Virtus.model
  include ActiveModel::Validations

  attribute :password, String

  validate :password_not_simple


  private

  def password_not_simple
    errors.add(:password, :too_simple)
  end
end

