require( 'pg' )
require_relative( '../db/sql_runner' )

class Pet

  attr_reader( :id, :pet_store_id, :name, :type )

    def initialize( options )
      @id = options[ 'id' ].to_i
      @pet_store_id = options['pet_store_id'].to_i
      @name = options['name']
      @type = options['type']
    end

    def save
      sql = "INSERT INTO pets ( name, type, pet_store_id ) VALUES ( '#{ @name }', '#{ @type }', #{ @pet_store_id } ) RETURNING *;"
      pet = SqlRunner.run( sql ).first
      @id = pet['id'].to_i
    end 

    def pet_store
      sql = "SELECT pet_store.name FROM pet_store WHERE id = #{@pet_store_id};"
      pet_store = SqlRunner.run( sql )
      result = pet_store.map{ |pet_store| PetStore.new(pet_store) }
      return result
    end  

end