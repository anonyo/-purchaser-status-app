class Purchase < ActiveRecord::Base
  def self.all_pending
    where(status: 'pending')
  end
end
