class Person < ActiveRecord::Base
  # belongs_to :manager, class_name: "Person", foreign_key :manager_id
  # has_many :employees, class_name: "Person", foreign_key :manager_id
  belongs_to :location
  belongs_to :role
  def self.billable
    joins(:role).merge(Role.billable)
  end
end
