# frozen_string_literal: true

json.extract! genre, :id, :label, :created_at, :updated_at
json.url genre_url(genre, format: :json)
