class Purchase < ActiveRecord::Base
  def self.all_pending
    where(status: 'pending')
  end
  def self.all_in_progress
    where(status: 'in_progress')
  end
  def self.all_submitted
    where(status: 'submitted')
  end
  def self.all_shipped
    where(status: 'shipped')
  end
  def self.all_received
    where(status: 'received')
  end
end
