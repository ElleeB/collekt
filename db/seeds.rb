User.create(username: "avery", email: "avery@gmail.com", bio: "do you know the muffin man, the muffin man, the muffin man? Do you know, the muffin man, who lives on Drury lane?", password: "muffin", password_confirmation: "muffin")

categories = Category.create([{name: 'Toys'}, {name: 'Furniture'}, {name: 'Instruments'}])

collections = Collection.create([
  {title: "hotwheels", user_id: 1, category_id: 1, description: "lots of little cars!"},
  {title: "chairs", user_id: 1, category_id: 2, description: "dining, accent, decorative!"},
  {title: "guitars", user_id: 1, category_id: 3, description: "pluck pluck pluck and strum strum strum!"}
])

items = Item.create([
  {name: "camaro", collection_id: 1, description: "red with minor scratches. acquired two years ago with my dad."},
  {name: "porsche", collection_id: 1, description: "black in mint condition. this is my favorite."},
  {name: "jeep", collection_id: 1, description: "grey and orange. model year 2010."},

  {name: "eames", collection_id: 2, description: "mint condition black leather."},
  {name: "rocking", collection_id: 2, description: "maple rocker authentic 1866."},
  {name: "morris", collection_id: 2, description: "brown leather on oak. slight wear on leather. authentic 1879."},

  {name: "fender strat", collection_id: 3, description: "gold and black body slight wear. acquired in 1988. authentic 1959."},
  {name: "fender tele", collection_id: 3, description: "telecaster in mint condition."},
  {name: "les paul", collection_id: 3, description: "limited edition blue body."}
])
