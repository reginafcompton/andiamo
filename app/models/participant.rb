class Participant < ActiveRecord::Base
  belongs_to :arrival_day, class_name: "Day"
  belongs_to :arrival_city, class_name: "City"
  belongs_to :departure_day, class_name: "Day"
  belongs_to :departure_city, class_name: "City"
end