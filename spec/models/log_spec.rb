require 'rails_helper'

RSpec.describe Log, type: :model do
  it { should validate_presence_of(:userid)}
  it { should validate_presence_of(:desc)}
end
