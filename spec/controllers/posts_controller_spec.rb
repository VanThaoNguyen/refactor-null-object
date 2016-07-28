require 'rails_helper'

describe PostsController, type: :controller do
  let!(:user)  { create(:user) }

  before { @request.env['devise.mapping'] = Devise.mappings[:user] }
  before { sign_in user }
  
  describe '#index' do
    def do_request
      get :index
    end
    
    let!(:posts) { create(:post) }

    it 'show post list' do
      do_request

      expect(assigns(:posts).count).to eq 1
    end
  end
end