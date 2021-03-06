require 'rails_helper'

RSpec.describe Task, type: :model do
  context 'associations' do
    it { is_expected.to belong_to(:project) }
    it { is_expected.to have_many(:comments).dependent(:destroy) }
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end
end
