class Idea < ApplicationRecord
    validates :content, {presence: true, length: {maximum: 14}}
end
