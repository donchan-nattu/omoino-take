class Session < ApplicationRecord
  has_many :burn_events, dependent: :destroy
  has_one :session_stat, dependent: :destroy

  validates :session_token, presence: true, uniqueness: true
end
