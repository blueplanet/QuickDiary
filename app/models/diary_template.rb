class DiaryTemplate < ActiveRecord::Base
  attr_accessible :seq, :title

  validates :seq, :presence => true, :uniqueness => true,  :numericality => { :greater_than => 0 }
  validates :title, :presence => true, :uniqueness => true
end
