class SessionStat < ApplicationRecord
  belongs_to :session

  validates :burn_count, :total_days, :growth_value, :flame_level,
          numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
