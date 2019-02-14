class Quote < ApplicationRecord
    validates :year, format: /^[0-9]+$/
end
