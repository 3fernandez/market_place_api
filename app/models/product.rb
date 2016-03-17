# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  title      :string           default("")
#  price      :decimal(, )      default("0.0")
#  published  :boolean          default("f")
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Product < ActiveRecord::Base
  validates :title, :user_id, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }, presence: true

  belongs_to :user
end
