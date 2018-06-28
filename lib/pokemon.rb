class Pokemon
  @@all = []
  attr_accessor :name, :type, :db, :id

  def initialize(id:, name:, type:, db:)

  end

  def self.all
    @@all
  end


  def self.save( name, type, db)
    binding.pry
    ins = db.prepare('INSERT INTO pokemon (name, type, db) values (?, ?, ?)', [name, type, db])
    ins.execute

  #db.execute( "INSERT INTO pokemon ( name, type, db) VALUES ( ?, ?, ? )", [name, type, db])
  end



end
