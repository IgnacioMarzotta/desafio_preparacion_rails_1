class Movie < ApplicationRecord
    validates :year, presence: true, numericality: {only_integer: true, greater_than: 1890, less_than: 2020}
    validates :name, presence: true
end
