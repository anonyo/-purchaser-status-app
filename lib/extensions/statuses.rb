require 'pry'
class ActiveRecord::Base
  def self.has_statuses(*status_names)
    status_names.each do |status_name|
      scope "all_#{status_name}", -> { where(status: status_name.to_s) }
    end
  end
end
