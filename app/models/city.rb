class City < ActiveRecord::Base
  has_many :participants, foreign_key: :arrival_city_id
  has_many :participants, foreign_key: :departure_city_id
end