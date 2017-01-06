class Job < ApplicationRecord
  has_many :timers, dependent: :destroy

  belongs_to :user
  def owner
    user.email
  end

  def self.new_with_time
  end

end
