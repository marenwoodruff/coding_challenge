require 'spec_helper'

describe Review do
  let(:restaurant) { FactoryGirl.create(:restaurant) }
  before { @review = restaurant.reviews.create(rating: 4.4, first_name: "Patty", comment: "Let's go here in two days.") }

  subject { @review }

  it { should respond_to(:rating) }
  it { should respond_to(:first_name) }
  it { should respond_to(:comment) }
  it { should respond_to(:restaurant) }     # @review.restaurant --> hash of the owner of the review
  it { should be_valid }

  describe "validations" do
    describe "rating" do
      describe "not present" do
        before { @review.rating = " " }
        it { should_not be_valid }
      end
    end

    describe "first_name" do
      context "not present" do
        before { @review.first_name = " " }
        it { should_not be_valid }
      end

      context "too long" do
        before { @review.first_name = "a" * 51 }
        it { should_not be_valid }
      end
    end

    describe "comment" do
      context "not present" do
        before { @review.comment = " " }
        it { should_not be_valid }
      end

      context "too long" do
        before { @review.comment = "a" * 301 }
        it { should_not be_valid }
      end
    end
  end
end
