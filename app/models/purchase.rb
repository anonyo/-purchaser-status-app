class Purchase < ActiveRecord::Base
  has_statuses :pending, :in_progress, :submitted, :shipped, :received
end
