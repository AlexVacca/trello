class Task < ActiveRecord::Base
belongs_to :user
validates :title , presence: true , confirmation: true
validates :content , presence: true , confirmation: true
validates :duration , presence: true , confirmation: true
validates :duration, numericality: { only_integer: true }

end
