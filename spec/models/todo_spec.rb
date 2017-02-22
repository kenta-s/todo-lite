require 'rails_helper'

RSpec.describe Todo, type: :model do
  it { is_expected.to validate_presence_of(:title) }
  it { is_expected.to validate_presence_of(:status) }
  it { is_expected.to validate_length_of(:title).is_at_most(100) }
end
