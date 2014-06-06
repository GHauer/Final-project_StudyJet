class Enrollment < ActiveRecord::Base

  belongs_to :user

  belongs_to :subject

  validates :user_id, :presence => true, :uniqueness => { :scope => :photo_id }

  validates :subject_id, :presence => true

end
