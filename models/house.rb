require_relative('../db/sql_runner')

class House

  attr_reader :id, :image
  attr_accessor :name

  def initialize(options)
    @id = options['id'] if options['id']
    @name = options['name']
    @image = options['image']
  end

  def save
    sql = "INSERT INTO houses (name, image)
    VALUES ($1, $2) RETURNING id"
    values = [@name, @image]
    result = SqlRunner.run(sql, values)
    @id = result[0]["id"].to_i
  end
end
