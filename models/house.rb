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

  def self.all()
    sql = "SELECT * FROM houses"
    houses = SqlRunner.run(sql)
    houses.map{ |house| House.new(house)}
  end

  def self.find(id)
    sql = "SELECT*FROM houses WHERE id = $1"
    values = [id]
    houses = SqlRunner.run(sql, values)
    result = House.new(houses.first)
    return result
  end

  def self.delete_all
    sql = "DELETE FROM houses"
    SqlRunner.run(sql)
  end

end
