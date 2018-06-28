class Pokemon
  @@all = []
  attr_accessor :name, :type, :db, :id

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.all
    @@all
  end


  def self.save( name, type, db)
    db.execute( "INSERT INTO pokemon ( name, type ) VALUES ( ?, ? )", name, type)
  end

  def self.find(id, db)
    new_pokemon = db.execute( "SELECT * FROM pokemon WHERE id = (?)", id )

    george = Pokemon.new(id: new_pokemon.flatten[0], name: new_pokemon.flatten[1], type: new_pokemon.flatten[2], db: db)
  end



end
