require 'spec_helper'

describe RestaurantsController, type: :controller do  
  describe "GET new" do
    it "renders :new" do
      get :new
      expect(response).to render_template(:new)
    end

    it "assigns new Restaurant to @restaurant" do
      get :new
      assigns(:restaurant).should be_a_new(Restaurant) # confirm that @restaurant = Restaurant.new
    end
  end

  describe "POST create" do
    context "valid attributes" do
      it "creates restaurant" do
        expect{
          post :create, restaurant: FactoryGirl.attributes_for(:restaurant)
        }.to change(Restaurant, :count).by(1)
      end

      it "redirects to :show" do
        post :create, restaurant: FactoryGirl.attributes_for(:restaurant)
        last_restaurant = Restaurant.last
        expect(response).to redirect_to(restaurant_path(last_restaurant.id))
      end
    end

    context "invalid attributes" do
      it "does not create restaurant" do
        expect{
          post :create, restaurant: FactoryGirl.attributes_for(:restaurant, name: " ")
        }.to_not change(Restaurant, :count)
      end

      it "re-renders :new" do
        post :create, restaurant: FactoryGirl.attributes_for(:restaurant, name: " ")
        expect(response).to render_template(:new)
      end
    end
  end

  describe "GET show" do
    Restaurant.destroy_all

    let(:restaurant) { FactoryGirl.create(:restaurant, name: "JCT") }

    it "renders :show" do
      get :show, id: restaurant.id
      expect(response).to render_template(:show)
    end

    it "assigns requested restaurant to @restaurant" do
      get :show, id: restaurant.id
      # Assigns @restaurant to eq restaurant that we defined on line 5
      assigns(:restaurant).should eq(restaurant)
    end
  end
 end
