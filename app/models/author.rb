# frozen_string_literal: true

class Author < ApplicationRecord
  has_many :books, dependent: :destroy

  def name
    "#{first_name} #{last_name}"
  end
end
