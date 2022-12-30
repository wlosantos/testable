require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'database columns' do
    it { should have_db_column :title }
    it { should have_db_column :description }
  end

  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :description }
  end

  describe 'create article' do
    let(:article) { FactoryBot.create :article }

    it 'should create article' do
      expect(article).to be_valid
    end
  end
end
