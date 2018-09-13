require 'rails_helper'

describe Review do
  it { should validate_presence_of :user_id}
  it { should validate_presence_of :review}
  it { should have_and_belong_to_many :products }
end
