class Cafe < ApplicationRecord
  # cafe.rb
validates :title, presence: true
validates :address, presence: true
validates :title, uniqueness: { scope: :address }
end
