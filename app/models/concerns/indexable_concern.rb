# frozen_string_literal: true

module IndexableConcern
  extend ActiveSupport::Concern

  included do
    after_commit :update_index
  end

  class_methods do
    def search(filter)
      ::HTTParty.get("#{::ReindexJob::HOST}/#{index_name}/_search", body: filter.to_json, headers: { 'Content-Type' => 'application/json' })
    end

    def index_name
      name.downcase.pluralize
    end
  end

  def update_index
    ReindexJob.import(self)
  end
end
