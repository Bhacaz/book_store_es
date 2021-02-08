# frozen_string_literal: true

class ReindexJob < ApplicationJob
  HOST = Rails.application.credentials.elasticsearch_host

  def perform(index_name, id, method, body)
    puts "Elasticsearch: #{method.upcase} #{index_name}/_doc/#{id}"
    HTTParty.public_send(method.to_sym, "#{HOST}/#{index_name}/_doc/#{id}", body: body, headers: { 'Content-Type' => 'application/json' })
  end

  def self.import(record)
    method = record.destroyed? ? :delete : :put
    new.perform(record.class.index_name, record.id, method, record.to_json)
  end
end
