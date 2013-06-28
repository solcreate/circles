class Shape < ActiveRecord::Base
  belongs_to :node
  belongs_to :character
  attr_accessible :display, :value
end
