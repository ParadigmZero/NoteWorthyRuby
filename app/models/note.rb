class Note < ApplicationRecord
  # Emulating a linking table
  has_many :notekeywordlinks
  has_many :keywords, :through =>  :notekeywordlinks
end
