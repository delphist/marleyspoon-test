# frozen_string_literal: true

class RecipeRepository
  class NotFound < StandardError; end

  DEFAULT_ARGUMENTS = {
    content_type: 'recipe',
    include: 1
  }.freeze

  def initialize(client)
    @client = client
  end

  def entries(arguments)
    client.entries(DEFAULT_ARGUMENTS.merge(arguments))
  end

  def entry(id, arguments)
    result = client.entry(id, DEFAULT_ARGUMENTS.merge(arguments))
    raise NotFound if result.nil?

    result
  end

  private

  attr_reader :client
end
