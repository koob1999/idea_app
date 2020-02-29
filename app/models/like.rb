class Like < ApplicationRecord
    validates :idea_id, {presence: true}
    validates :user_id, {presence: true}
end
