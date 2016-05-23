class Day < ActiveRecord::Base
  has_many :participants, foreign_key: :arrival_day_id
  has_many :participants, foreign_key: :departure_day_id
end