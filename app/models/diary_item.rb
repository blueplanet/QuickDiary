class DiaryItem < ActiveRecord::Base
  attr_accessible :content, :diary, :no
  validates :no, :presence => true, :numericality => { :greater_than => 0 }

  belongs_to :diary
end
