class DiaryItem < ActiveRecord::Base
  attr_accessible :content, :diary, :no, :title
  validates :no, :presence => true, :numericality => { :greater_than => 0 }
  validates :title, :presence => true

  belongs_to :diary
end
