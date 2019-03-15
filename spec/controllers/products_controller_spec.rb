require 'rails_helper'

describe ProductsController do
  describe 'GET #index' do
    it "renders the :index template" do
      get :index
      expect(response).to render_template :index
    end
    it "populates an array of products ordered by created_at ASC" do
      products = create_list(:product, 3)
      get :index
      expect(assigns(:products)).to match(products)
    end
  end
end