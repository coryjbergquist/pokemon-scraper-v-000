class Pokemon
  @@all = []
  attr_accessor :name, :type, :db, :id

  def initialize(id:, name:, type:, db:)

  end

  def self.all
    @@all
  end


  def self.save( name, type, db)

  end



end
