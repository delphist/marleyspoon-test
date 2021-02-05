# frozen_string_literal: true

class RecipeRepository
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
    client.entry(id, DEFAULT_ARGUMENTS.merge(arguments))
  end

  private

  attr_reader :client
end
