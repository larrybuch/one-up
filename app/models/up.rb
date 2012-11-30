# == Schema Information
#
# Table name: ups
#
#  id          :integer          not null, primary key
#  declaration :string(255)
#  name        :string(255)
#  twitter_url :string(255)
#  money       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Up < ActiveRecord::Base
  validates :declaration, :presence => true
  validates :name, :presence => true
  validates :money, :presence => true
end
