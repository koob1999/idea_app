class User < ApplicationRecord
    validates :name, {presence: true, uniqueness: {message: "この名前は既に使用されています"}, length: {maximum: 10, message: "10文字以内の文字を入力してください"}}
end
