# frozen_string_literal: true

class ListRecipesQuery
  PER_PAGE = 3
  FIELDS = %w[sys.id fields.title fields.description fields.photo].freeze

  def initialize(repository, page)
    @repository = repository
    @page = page || 1
  end

  def call
    repository.entries(
      skip: (page - 1) * PER_PAGE,
      limit: PER_PAGE,
      select: FIELDS
    ).to_a
  end

  private

  attr_reader :repository, :page
end
