class Purchase < ActiveRecord::Base
  STATUSES = %w(pending in_progress submitted shipped received)

  class << self
    STATUSES.each do |status_name|
      define_method "all_#{status_name}" do
        where(status: status_name)
      end
    end
  end
end
