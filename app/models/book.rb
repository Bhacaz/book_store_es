# frozen_string_literal: true

class Book < ApplicationRecord
  include IndexableConcern

  belongs_to :author
  has_many :genre_books
  has_many :genres, through: :genre_books

  def to_json(*_args)
    {
      title: title,
      synopsis: synopsis,
      genres: genres.map(&:label),
      author: {
        name: author.name
      }
    }.to_json
  end
end
