class Keyword < ApplicationRecord
  # Emulating a linking table
  has_many :notekeywordlinks
  has_many :notes, :through =>  :notekeywordlinks
end
