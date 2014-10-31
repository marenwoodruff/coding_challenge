require 'spec_helper'

describe Restaurant do
  before { @restaurant = Restaurant.new(name: "JCT", address: "Atlanta, GA",
                            phone: "555.555.5555", website: "JCT@jct.com") }

  subject { @restaurant }

  it { should respond_to(:name) }
  it { should respond_to(:address) }
  it { should respond_to(:phone) }
  it { should respond_to(:reviews) } # @restaurant.reviews --> an array of all reviews associated with that restaurant
  it { should be_valid }

  describe "validations" do
    describe "name" do
      context "not present" do
        before { @restaurant.name = " " }
        it { should_not be_valid }
      end

      context "too long" do
        before { @restaurant.name = "a" * 71 }
        it { should_not be_valid }
      end
    end

    describe "address" do
      context "not present" do
        before { @restaurant.address = " " }
        it { should_not be_valid }
      end

      context "too long" do
        before { @restaurant.address = "a" * 301 }
        it { should_not be_valid }
      end

    end

    describe "phone" do
      context "not present" do
        before { @restaurant.phone  = " " }
        it { should_not be_valid}
      end

      context "too short" do
        before { @restaurant.phone = "a" * 11 }
        it { should_not be_valid }
      end

    end

  end

  describe "associations" do
    describe "review" do
      before do
        Restaurant.destroy_all
        @restaurant.save
        FactoryGirl.create(:review, restaurant: @restaurant)
      end

      context "on restaurant destroy" do
        it "destroys all associated reviews" do
          reviews = @restaurant.reviews.to_a # .to_a is probably not necessary
          @restaurant.destroy
          expect(reviews).not_to be_empty
          reviews.each do |review|
            expect(Review.where(id: review.id)).to be_empty
          end
        end
      end
    end
  end
end