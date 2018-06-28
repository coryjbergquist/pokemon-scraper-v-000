class Pokemon
  @@all = []
  attr_accessor :name, :type, :db, :id

  def initialize(id:, name:, type:, db:)

  end

  def self.all
    @@all
  end


  def self.save( name, type, db)
    # ins = db.prepare('INSERT INTO pokemon (name, type, db) values (?, ?, ?)')
    # @@all.each { |s| ins.execute(s) }
    db.execute( "INSERT INTO pokemon ( name, type, db) VALUES ( ?, ?, ? )", [name, type, db])
  end



end
