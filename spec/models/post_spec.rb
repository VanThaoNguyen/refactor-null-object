require 'rails_helper'

describe Post do
  describe 'validations' do
    it { is_expected.to validate_presence_of :title  }
    it { is_expected.to validate_presence_of :body   } 
  end

  describe 'associaions' do
    it { is_expected.to belong_to :user  }
  end
end