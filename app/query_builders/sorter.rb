class Sorter
  DIRECTIONS = %w(asc desc)


  def initialize(scope, params)
    @scope = scope
    @presenter = "#{@scope.model}Presenter".constantize
    @column = params[:sort]
    @direction = params[:dir]
  end

  def sort
    # check if column and direction exist
    return @scope unless @column && @direction

    # valid column?
    error!('sort', @column) unless @presenter.sort_attributes.include?(@column)

    # valid direction?
    error!('dir', @direction) unless DIRECTIONS.include?(@direction)

    @scope.order("#{@column} #{@direction}")
  end


  def error!(name, value)
    columns = @presenter.sort_attributes.join(',')
    raise QueryBuilderError.new("#{name}=#{value}"),
      "Invalid sorting params. sort: #{columns}, dir: #{DIRECTIONS}"

  end
end
