class Prospect < ApplicationRecord
  validates :cpf, presence: true, uniqueness: true
end
