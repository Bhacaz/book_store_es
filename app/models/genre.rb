# frozen_string_literal: true

class Genre < ApplicationRecord
  has_many :genre_books
  has_many :books, through: :books, dependent: :destroy
end
