class Notekeywordlink < ApplicationRecord
  # the linking table can have many notes and keywords (tags)
  has_many :notes
  has_many :keywords
end
