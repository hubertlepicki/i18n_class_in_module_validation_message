require 'rails_helper'

describe Registration::Form do
  let(:form) { Registration::Form.new }
  it 'should display proper validation error message for simple password' do
    form.valid?

    expect(form.errors[:password].first).to eql("Is too simple")
  end
end
