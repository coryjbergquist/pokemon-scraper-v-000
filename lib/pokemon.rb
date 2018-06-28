class Pokemon
  @@all = []
  attr_accessor :name, :type, :db, :id

  def initialize(id:, name:, type:, db:)

  end

  def self.all
    @@all
  end


  def self.save( name, type, id)
binding.pry
    db.execute( "INSERT INTO pokemon ( name, type, id ) VALUES ( ?, ?, ? )", [name, type, id])
  end



end
