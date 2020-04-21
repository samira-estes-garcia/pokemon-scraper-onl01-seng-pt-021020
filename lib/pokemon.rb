class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
  def initialize(id:, name:, type:, db:)
    @id = id 
    @name  =  name
    @type = type
    @db = id, name, type, db
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end
  
  def self.find(id_num, db)
    find_info = db.execute("SELECT * FROM pokemon WHERE id = ?", id_num).flatten
    Pokemon.new(id: find_info[0], type: find_info[2], db: db)
  end
  
end
