class Pokemon

  attr_accessor :name, :type, :db

  def initialize(name = nil, type = nil, db = nil)
    binding.pry
    @name = name
    @type = type
    @db = db
  end



end
