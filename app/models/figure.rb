class Figure < ActiveRecord::Base
  belongs_to :idea
  belongs_to :interface
  attr_accessible :default, :deleted_at, :name, :sort_no
end
