User.destroy_all
Category.destroy_all
Collection.destroy_all
Item.destroy_all
Image.destroy_all


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
  {name: "thonet", collection_id: 2, description: "michael thonet authentic 1866 folding chair."},
  {name: "morris", collection_id: 2, description: "brown leather on oak. slight wear on leather. authentic 1879."},

  {name: "fender strat", collection_id: 3, description: "gold and black body slight wear. acquired in 1988. authentic 1977."},
  {name: "fender tele", collection_id: 3, description: "telecaster in mint condition."},
  {name: "les paul", collection_id: 3, description: "limited edition blue body."}
])

images = Image.create([
  {source: "./assets/images/camaro1.jpg", item_id: 1},
  {source: "./assets/images/camaro2.jpg", item_id: 1},
  {source: "./assets/images/camaro3.jpg", item_id: 1},
  {source: "./assets/images/porsche1.jpg", item_id: 2},
  {source: "./assets/images/porsche2.jpg", item_id: 2},
  {source: "./assets/images/porsche3.jpg", item_id: 2},
  {source: "./assets/images/jeep1.jpg", item_id: 3},
  {source: "./assets/images/jeep2.jpg", item_id: 3},
  {source: "./assets/images/jeep3.jpg", item_id: 3},

  {source: "./assets/images/eames1.jpg", item_id: 4},
  {source: "./assets/images/eames2.jpg", item_id: 4},
  {source: "./assets/images/thonet1.jpg", item_id: 5},
  {source: "./assets/images/thonet2.jpg", item_id: 5},
  {source: "./assets/images/morris1.jpg", item_id: 6},
  {source: "./assets/images/morris2.jpg", item_id: 6},
  {source: "./assets/images/morris3.jpg", item_id: 6},

  {source: "./assets/images/strat1.jpg", item_id: 7},
  {source: "./assets/images/strat2.jpg", item_id: 7},
  {source: "./assets/images/strat3.jpg", item_id: 7},
  {source: "./assets/images/tele1.jpg", item_id: 8},
  {source: "./assets/images/tele2.jpg", item_id: 8},
  {source: "./assets/images/les1.jpg", item_id: 9},
  {source: "./assets/images/les2.jpg", item_id: 9},
  {source: "./assets/images/les3.jpg", item_id: 9}
])
