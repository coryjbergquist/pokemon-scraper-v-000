class Pokemon

  attr_accessor :name, :type, :db

  def initialize(name:, type:, db:)
    @name = name
    @type = type
    @db = db
  end



end

expected <Pokemon:0x0000000288b3d0 @name={:id=>1, :name=>"Pikachu", :type=>"electric", :db=><SQLite3::Databa..., @functions={}, @results_as_h
ash=nil, @type_translation=nil, @readonly=false>}, @type=nil, @db=nil> to respond to :id
