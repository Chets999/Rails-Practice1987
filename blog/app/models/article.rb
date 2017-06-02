class Article < ActiveRecord::Base
	validates_presence_of :title, :body, :publish_date


	def date_cant_be_lessthan_todays_date
		if !self.publish_date.nil?
			if self.publish_date < date.today
				self.errors.add(:publish_date, "Date Can't be less than today")
			end
		end

	end

end
