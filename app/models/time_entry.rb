class TimeEntry < AccountEntry
  belongs_to :employee
  
  validates :time, numericality: {greater_than: 0, less_than: 24}

  before_create :calculate_amount!

  def self.per_hour
    100
  end

  def calculate_amount!
  	self.amount = TimeEntry.per_hour * self.time
  	if self.amount > 100000
  		return false
  	end
  	true
  end
end
