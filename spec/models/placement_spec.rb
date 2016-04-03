# == Schema Information
#
# Table name: placements
#
#  id         :integer          not null, primary key
#  order_id   :integer
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Placement, type: :model do
  let(:placement) { FactoryGirl.build :placement }
  subject { placement }

  it { should respond_to(:order_id) }
  it { should respond_to(:product_id) }
  it { should respond_to(:quantity) }

  it { should belong_to(:order) }
  it { should belong_to(:product) }

  describe "#decrement_product_quantity!" do
    it "decreases the product quantity by the placement quantity" do
      product = placement.product
      expect{placement.decrement_product_quantity!}.to change{product.quantity}.by(-placement.quantity)
    end
  end
end
