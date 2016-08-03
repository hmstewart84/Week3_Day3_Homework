require_relative( './models/pet_store' )
require_relative( './models/pets' )

require( 'pry-byebug' )

  pet_store1 = PetStore.new( { 'name' => 'Masses of Pets', 'address' => '1 First Avenue', 'stock_type' => 'exotic' } )
  pet_store1.save()
  pet_store2 = PetStore.new( { 'name' => 'Pets Ahoy', 'address' => '2 Second Avenue', 'stock_type' => 'aquatic'} )
  pet_store2.save()
  pet_store3 = PetStore.new( { 'name' => 'Pawsitively Ruff', 'address' => '3 Third Avenue', 'stock_type' => 'canine'} )
  pet_store3.save()


  pet1 = Pet.new( { 'name' => 'Gillian', 'type' => 'lizard', 'pet_store_id' => pet_store1.id }  )
  pet2 = Pet.new( { 'name' => 'Todd', 'type' => 'sloth', 'pet_store_id' => pet_store1.id }  )
  pet3 = Pet.new( { 'name' => 'Charley', 'type' => 'stingray', 'pet_store_id' => pet_store2.id }  )
  pet4 = Pet.new( { 'name' => 'Gregory', 'type' => 'clown fish', 'pet_store_id' => pet_store2.id }  )
  pet5 = Pet.new( { 'name' => 'Bob', 'type' => 'fox terrier', 'pet_store_id' => pet_store3.id }  )
  pet6 = Pet.new( { 'name' => 'Paul', 'type' => 'dalmatian', 'pet_store_id' => pet_store3.id }  )
  pet1.save()
  pet2.save()
  pet3.save()
  pet4.save()
  pet5.save()
  pet6.save()


binding.pry
nil