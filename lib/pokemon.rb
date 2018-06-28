class Pokemon
  @@all = []
  attr_accessor :name, :type, :db, :id

  def initialize(id:, name:, type:, db:)

  end

  def self.all
    @@all
  end


  def self.save(id:, name:, type:, db:)
    "INSERT INTO pokemon (id, name, type, db) VALUES (id:, name:, type:, db:)"
  end



end
