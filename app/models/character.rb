class Character < ActiveRecord::Base
  belongs_to :seed
  belongs_to :touch
  attr_accessible :default, :deleted_at, :length, :name, :sort_no
end
