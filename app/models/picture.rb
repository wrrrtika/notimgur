class Picture < ActiveRecord::Base
	 scope :most_recent, -> { order(created_at: :desc) }
	 scope :most_recent_5, -> { most_recent.limit(5) }
	 scope :created_before, -> (time) { where("created_at > ?", time) }

	 def self.created_before(time)
	 	where("created_at < ?", time)
	 end

end
