class Pokemon

  attr_accessor :name, :type, :db

  def initialize(name, type = nil, db = nil)
    @name = name
    @type = type
    @db = db
  end



end
