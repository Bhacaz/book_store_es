# frozen_string_literal: true

json.extract! book, :id, :title, :synopsis, :author_id, :publication_date, :created_at, :updated_at
json.url book_url(book, format: :json)
