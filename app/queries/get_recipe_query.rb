class GetRecipeQuery
  PER_PAGE = 10.freeze
  FIELDS = %w(sys.id fields.title fields.description fields.photo fields.chef fields.tags).freeze

  def initialize(repository, id)
    @repository = repository
    @id = id
  end

  def call
    repository.entry(id,
      select: FIELDS
    )
  end

  private

  attr_reader :repository, :id
end
