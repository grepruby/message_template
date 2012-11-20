class MessageTemplate < ActiveRecord::Base
  attr_accessible :active_from, :active_until, :name, :status,:data

  validates_presence_of :active_from, :active_until, :name, :data
  before_validation :active_date_range


  protected
  def active_date_range
    return if active_from.blank? || active_until.blank?
    if active_from.to_date > active_until.to_date
      self.errors.add(:base, "Active date mismatch.")
    end
  end

end
