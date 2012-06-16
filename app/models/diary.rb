class Diary < ActiveRecord::Base
  attr_accessible :date
  validates :diary_items, :length => { :minimum => 1 }

  has_many :diary_items
end
