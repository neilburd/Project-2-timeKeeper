class Job < ApplicationRecord
  belongs_to :user

  def owner
    user.email
  end

  def self.new_with_time
  end

end
