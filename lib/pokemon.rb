class Pokemon
  @@all = []
  attr_accessor :name, :type, :db, :id

  def initialize(name:, type:, db:)

  end

  def self.all
    @@all
  end


  def self.save( name, type, db)
    db.execute( "INSERT INTO pokemon ( name, type ) VALUES ( ?, ? )", name, type)
  end

  def self.find(id, db)
    new_pokemon = db.execute( "SELECT * FROM pokemon WHERE id = (?)", id )
    george = Pokemon.new(name: new_pokemon[1], type: new_pokemon[2])
    binding.pry
  end



end
