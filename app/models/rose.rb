class Rose < ApplicationRecord
    belongs_to :garden
    validates :water, presence: true
end
