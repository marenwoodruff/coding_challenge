# require 'spec_helper'

# describe ReviewsController, type: :controller do

#   # $ bundle exec rspec spec/controllers/reviews_controller_spec.rb:20
#   describe "GET new" do
#     it "renders :new" do
#       get :new, :restaurant_id => @restaurant.id  
#       expect(response).to render_template(:new)
#     end

#     it "assigns new Review to @review" do
#       get :new, :restaurant_id => @restaurant.id
#       assigns(:review).should be_a_new(Review) # confirm that @review = Review.new
#     end
#   end

#   describe "POST create" do
#     context "valid attributes" do
#       it "creates review" do
#         # When I post to the create action, change review.count by 1, aka add 1 to the reviews db
#         expect{
#           post :create, review: FactoryGirl.attributes_for(:review)
#         }.to change(Review, :count).by(1)
#       end

#       it "redirects to :show" do
#         post :create, review: FactoryGirl.attributes_for(:review)
#         last_task = review.last
#         expect(response).to redirect_to(review_path(last_review.id))
#       end
#     end

#     context "invalid attributes" do
#       it "does not create review" do
#         expect{
#           post :create, review: FactoryGirl.attributes_for(:review, rating: " ")
#         }.to_not change(Review, :count)
#       end

#       it "re-renders :new" do
#         post :create, review: FactoryGirl.attributes_for(:review, rating: " ")
#         expect(response).to render_template(:new)
#       end
#     end
#   end


#   describe "DELETE destroy" do
#     let!(:review) { Review.create(rating: 2.2, first_name: "Patty", comment: "Never again.") }

#     it "deletes the requested review" do
#       expect{
#         delete :destroy, id: review.id
#       }.to change(Review, :count).by(-1)
#     end

#     it "redirects to restaurant show page" do
#       delete :destroy, id: review.id
#       expect(response).to redirect_to([@restaurant, review])
#     end
#   end
# end