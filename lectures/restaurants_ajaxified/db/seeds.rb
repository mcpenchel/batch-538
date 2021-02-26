puts 'Creating restaurants...'
Restaurant.create!({
  name: "Marcia's Kitchen",
  address: "Amsterdam"
})
Restaurant.create!({
  name: "Boteco da Esquina",
  address: "Esquina da casa do Victor"
})
puts 'Finished!'