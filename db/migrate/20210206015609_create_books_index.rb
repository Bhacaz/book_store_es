# frozen_string_literal: true

class CreateBooksIndex < ActiveRecord::Migration[6.1]
  def up
    ::HTTParty.put(
      "#{ReindexJob::HOST}/books",
      headers: { 'Content-Type' => 'application/json' },
      body: {
        "mappings": {
          "properties": {
            "title": {
              "type": 'text',
              "fields": {
                "raw": {
                  "type": 'keyword'
                }
              }
            },
            "author": {
              "properties": {
                "name": { "type": 'text' }
              }
            },
            "synopsis": { "type": 'text' },
            "genres": { "type": 'keyword' }
          }
        }
      }.to_json
    )
  end
end
