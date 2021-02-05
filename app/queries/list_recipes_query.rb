class ListRecipesQuery
  PER_PAGE = 3
  FIELDS = %w[sys.id fields.title fields.description fields.photo].freeze

  def initialize(repository, page = 1)
    @repository = repository
    @page = page
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
