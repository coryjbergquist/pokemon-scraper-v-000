class Pokemon
  @@all = []
  attr_accessor :name, :type, :db, :id

  def initialize(id:, name:, type:, db:)

  end

  def self.all
    @@all
  end


  def self.save( name, type, db)
    db.execute( "INSERT INTO pokemon ( name, type ) VALUES ( ?, ? )", name, type)
  end

  def self.find(id, db)
    new_pokemon = db.execute( "SELECT * FROM pokemon WHERE id = (?)", id )
    newer = new_pokemon.flatten
    george = Pokemon.new(id: newer, name: "poop", type: newer[2], db: db)
    binding.pry
  end



end
