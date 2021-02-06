# frozen_string_literal: true

class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :synopsis
      t.references :author, null: false, foreign_key: true
      t.date :publication_date

      t.timestamps
    end
  end
end
