class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
  def initialize(id:, name:, type:, db:)
    @id = id 
    @name  =  name
    @type = type
    @db = id, name, type, db
  end
  
  def self.save(name, type, db)
    db.execute()
  end
  
end
