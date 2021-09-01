# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Nft.destroy_all
Collectible.destroy_all
User.destroy_all

users = User.create!([
  { first_name: 'Luc', last_name: 'Laurent', username: 'Luc07', email: 'luc@gmail.com', password: 'azerty'},
  { first_name: 'Thibault', last_name: 'Fitte', username: 'melitapis', email: 'tibo@gmail.com', password: 'azerty'},
  { first_name: 'Jean-Louis', last_name: 'Proprio', username: 'JPP', email: 'jpp@gmail.com', password: 'azerty'},
  { first_name: 'Pierre', last_name: 'Clouté-Cazalaa', username: 'Kazalaa', email: 'pierre@gmail.com', password: 'azerty'},
  { first_name: 'Matthieu', last_name: 'Assié', username: 'm4tti3u', email: 'matt@gmail.com', password: 'azerty'},
  ])
  puts User.last.id

collectible1 = Collectible.create!(category: 'Sneakers', brand: 'Nike', model: 'TravisXFragment', reference: 'NK-AJ1-TS-FRG', retail_price: 180.0, resell_value: 2488.9, description: 'Une paire révolutionnaire melant la créativité de 3 artistes de génies', nft_number: 1000, user_id: '3')
# file1 = URI.open('https://images.stockx.com/360/Air-Jordan-1-High-OG-SP-fragment-design-x-Travis-Scott/Images/Air-Jordan-1-High-OG-SP-fragment-design-x-Travis-Scott/Lv2/img01.jpg?auto=compress&w=480&q=90&dpr=1&updated_at=1628097985&h=320&fm=webp')
photo1 = URI.open('https://images.stockx.com/360/Air-Jordan-1-High-OG-SP-fragment-design-x-Travis-Scott/Images/Air-Jordan-1-High-OG-SP-fragment-design-x-Travis-Scott/Lv2/img36.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1628097985')
photo2 = URI.open('https://images.stockx.com/360/Air-Jordan-1-High-OG-SP-fragment-design-x-Travis-Scott/Images/Air-Jordan-1-High-OG-SP-fragment-design-x-Travis-Scott/Lv2/img04.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1628097985')
photo3 = URI.open('https://images.stockx.com/360/Air-Jordan-1-High-OG-SP-fragment-design-x-Travis-Scott/Images/Air-Jordan-1-High-OG-SP-fragment-design-x-Travis-Scott/Lv2/img19.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1628097985')
photo4 = URI.open('https://images.stockx.com/360/Air-Jordan-1-High-OG-SP-fragment-design-x-Travis-Scott/Images/Air-Jordan-1-High-OG-SP-fragment-design-x-Travis-Scott/Lv2/img25.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1628097985')
photo5 = URI.open('https://images.stockx.com/360/Air-Jordan-1-High-OG-SP-fragment-design-x-Travis-Scott/Images/Air-Jordan-1-High-OG-SP-fragment-design-x-Travis-Scott/Lv2/img28.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1628097985')
photo6 = URI.open('https://images.stockx.com/360/Air-Jordan-1-High-OG-SP-fragment-design-x-Travis-Scott/Images/Air-Jordan-1-High-OG-SP-fragment-design-x-Travis-Scott/Lv2/img33.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1628097985')
collectible1.photos.attach(io: photo1, filename: 'jordantravis1.jpg', content_type: 'image/jpg')
collectible1.photos.attach(io: photo2, filename: 'jordantravis2.jpg', content_type: 'image/jpg')
collectible1.photos.attach(io: photo3, filename: 'jordantravis3.jpg', content_type: 'image/jpg')
collectible1.photos.attach(io: photo4, filename: 'jordantravis4.jpg', content_type: 'image/jpg')
collectible1.photos.attach(io: photo5, filename: 'jordantravis5.jpg', content_type: 'image/jpg')
collectible1.photos.attach(io: photo6, filename: 'jordantravis6.jpg', content_type: 'image/jpg')
collectible1.save

collectible2 = Collectible.create!(category: 'Sneakers', brand: 'Adidas', model: 'NMDXChanel', reference: 'AD-NMD-CH', retail_price: 200.0, resell_value: 5367.9, description: 'Une paire révolutionnaire melant la créativité de 3 artistes de génies', nft_number: 100, user_id: '3')
file2 = URI.open('https://images.stockx.com/images/Adidas-Human-Race-NMD-Pharrell-x-Chanel-Black.png?fit=fill&bg=FFFFFF&w=480&h=320&auto=compress&q=90&dpr=1&trim=color&updated_at=1606321560&pad=0&fm=webp')
collectible2.photos.attach(io: file2, filename: 'nmd.png', content_type: 'image/png')
collectible2.save

collectible3 = Collectible.create!(category: 'Sneakers', brand: 'Nike', model: 'AJ185 Chicago', reference: 'NK-AJ1-CH-1985', retail_price: 60.0, resell_value: 5200.0, description: 'Une paire révolutionnaire melant la créativité de 3 artistes de génies', nft_number: 100, user_id: '3')
# file3 = URI.open('https://images.restocks.net/products/554724-173/air-jordan-1-mid-chicago-1-1000.png')
photo1 = URI.open('https://images.stockx.com/360/Air-Jordan-1-OG-Chicago-1985/Images/Air-Jordan-1-OG-Chicago-1985/Lv2/img01.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1606316360')
photo2 = URI.open('https://images.stockx.com/360/Air-Jordan-1-OG-Chicago-1985/Images/Air-Jordan-1-OG-Chicago-1985/Lv2/img05.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1606316360')
photo3 = URI.open('https://images.stockx.com/360/Air-Jordan-1-OG-Chicago-1985/Images/Air-Jordan-1-OG-Chicago-1985/Lv2/img07.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1606316360')
photo4 = URI.open('https://images.stockx.com/360/Air-Jordan-1-OG-Chicago-1985/Images/Air-Jordan-1-OG-Chicago-1985/Lv2/img11.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1606316360')
photo5 = URI.open('https://images.stockx.com/360/Air-Jordan-1-OG-Chicago-1985/Images/Air-Jordan-1-OG-Chicago-1985/Lv2/img15.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1606316360')
photo6 = URI.open('https://images.stockx.com/360/Air-Jordan-1-OG-Chicago-1985/Images/Air-Jordan-1-OG-Chicago-1985/Lv2/img18.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1606316360')
photo7 = URI.open('https://images.stockx.com/360/Air-Jordan-1-OG-Chicago-1985/Images/Air-Jordan-1-OG-Chicago-1985/Lv2/img19.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1606316360')
photo8 = URI.open('https://images.stockx.com/360/Air-Jordan-1-OG-Chicago-1985/Images/Air-Jordan-1-OG-Chicago-1985/Lv2/img21.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1606316360')
photo9 = URI.open('https://images.stockx.com/360/Air-Jordan-1-OG-Chicago-1985/Images/Air-Jordan-1-OG-Chicago-1985/Lv2/img24.jpg?auto=format,compress&w=559&q=90&dpr=2&updated_at=1606316360')
collectible3.photos.attach(io: photo1, filename: 'jordanog1.jpg', content_type: 'image/jpg')
collectible3.photos.attach(io: photo2, filename: 'jordanog2.jpg', content_type: 'image/jpg')
collectible3.photos.attach(io: photo3, filename: 'jordanog3.jpg', content_type: 'image/jpg')
collectible3.photos.attach(io: photo4, filename: 'jordanog4.jpg', content_type: 'image/jpg')
collectible3.photos.attach(io: photo5, filename: 'jordanog5.jpg', content_type: 'image/jpg')
collectible3.photos.attach(io: photo6, filename: 'jordanog6.jpg', content_type: 'image/jpg')
collectible3.photos.attach(io: photo7, filename: 'jordanog7.jpg', content_type: 'image/jpg')
collectible3.photos.attach(io: photo8, filename: 'jordanog8.jpg', content_type: 'image/jpg')
collectible3.photos.attach(io: photo9, filename: 'jordanog9.jpg', content_type: 'image/jpg')
collectible3.save

collectible4 = Collectible.create!(category: 'Cartes', brand: 'Pokemon', model: 'Dracofeu 1st ed.', reference: 'PK-DCF-1ST-PGA10', retail_price: 1.0, resell_value: 500000.0, description: 'Une carte mythique pour toutes les générations fans de Pokemon dans un état immaculé', nft_number: 10000, user_id: '3')
file4 = URI.open('https://fr.shopping.rakuten.com/photo/1115542299.jpg')
collectible4.photos.attach(io: file4, filename: 'dracofeu.jpg', content_type: 'image/jpg')
collectible4.save

collectible5 = Collectible.create!(category: 'Cartes', brand: 'Pokemon', model: 'Blastoise 1st ed.', reference: 'PK-BST-1ST-PGA8.5', retail_price: 1.0, resell_value: 12408.0, description: 'Une carte mythique pour toutes les générations fans de Pokemon dans un état immaculé', nft_number: 1000, user_id: '3')
file5 = URI.open('https://images.stockx.com/images/Blastoise-Holo-1999-Pokemon-Base-Set-1st-Edition-2-102-PSA.jpg?fit=fill&bg=FFFFFF&w=480&h=320&auto=compress&q=90&dpr=1&trim=color&updated_at=1620851076&pad=0&fm=webp')
collectible5.photos.attach(io: file5, filename: 'blastoise.jpg', content_type: 'image/jpg')
collectible5.save

collectible6 = Collectible.create!(category: 'Cartes', brand: 'Panini Revolution', model: 'Infinite Holo KB', reference: 'PZ-KB-HOLO', retail_price: 10.0, resell_value: 18090.1, description: 'Une carte magnifique', nft_number: 1000, user_id: '3')
file6 = URI.open('https://www.picclickimg.com/d/l400/pict/334066054028_/2019-panini-Prizm-Kobe-Bryant-GAME-USED-jersey.jpg')
collectible6.photos.attach(io: file6, filename: 'kobe.jpg', content_type: 'image/jpg')
collectible6.save

collectible7 = Collectible.create!(category: 'Cartes', brand: 'Pokemon', model: 'Booster Pack 1st ed.', reference: 'PK-BSTR-1ST', retail_price: 19.0, resell_value: 488.9, description: 'Un paquet de cartes Pokemon dans un état immaculé', nft_number: 100, user_id: '3')
file7 = URI.open('https://www.play-in.com/img/product/l/pokemon_set_de_base_edition_1_booster_florizarre_fr.webp')
collectible7.photos.attach(io: file7, filename: 'boosterpack.jpg', content_type: 'image/jpg')
collectible7.save

collectible8 = Collectible.create!(category: 'Montres', brand: 'Rolex', model: 'Day-Date', reference: 'RO-AJ1-TS-FRG', retail_price: 11080.0, resell_value: 20240.0, description: "L'imperméabilité, la précision, le bon fonctionnement et l'état de cette Rolex ont été minutieusement inspectés afin de déterminer le degré de remise en état requis pour répondre à nos normes strictes. Nous avons également étudié sa documentation technique et les archives du fabricant, quand cela s'est avéré possible, afin de garantir l'authenticité de la montre et son passé irréprochable. Pour votre tranquillité d'esprit, toutes nos montres s'accompagnent d'une garantie de 24 mois.", nft_number: 10000, user_id: '3')
file8 = URI.open('https://images.stockx.com/images/Rolex-Day-Date-40-228238-Gold.jpg?fit=fill&bg=FFFFFF&w=480&h=320&auto=compress&q=90&dpr=1&trim=color&updated_at=1610644996&pad=0&fm=webp')
collectible8.photos.attach(io: file8, filename: 'rolex.jpg', content_type: 'image/jpg')
collectible8.save

collectible9 = Collectible.create!(category: 'Montres', brand: 'Audemars Piguet', model: 'Royal Oak', reference: 'AP-RO-2002', retail_price: 180.0, resell_value: 63740.0, description: "La précision, le bon fonctionnement et l'état de cette Audemars Piguet ont été minutieusement inspectés dans notre centre de réparation Audemars Piguet certifié afin de déterminer le degré de remise en état requis pour répondre à nos normes strictes. Elle a également été comparée à nos archives afin de garantir son authenticité. Pour votre tranquillité d'esprit, nos montres s'accompagnent d'une garantie de 24 mois, ainsi que de toute période restante sur la garantie du fabricant couvrant un produit neuf ou révisé.", nft_number: 10000, user_id: '3')
file9 = URI.open('https://images.stockx.com/images/Audemars-Piguet-Royal-Oak-26579CEOO1225CE01-Black-front.jpg?fit=fill&bg=FFFFFF&w=480&h=320&auto=compress&q=90&dpr=1&trim=color&updated_at=1610577008&pad=0&fm=webp')
collectible9.photos.attach(io: file9, filename: 'audemarspiguet.jpg', content_type: 'image/jpg')
collectible9.save

collectible10 = Collectible.create!(category: 'Montres', brand: 'Patek Philippe', model: 'Nautilus', reference: 'PP-NTLS-2019', retail_price: 40000.0, resell_value: 99000.9, description: "Conçu à l’origine en 1976, le Nautilus a très peu changé au fil des ans. L’affaire est toujours bridé ensemble par les épinglés « oreilles », inspirés par les charnières sur les hublots. Il dispose encore d’autres traits de la bien-aimée de conception trop : la lunette aux multiples facettes ; le cadran simple, gravé ; l’intégré, s’effilant bracelet ; et un profil mince, souvent négligée par les concepteurs modernes. Le Nautilus est à peu près aussi bon que get montres de sport et provient de l’un des plus célèbres horlogers dans le monde. Ce modèle exquis dispose d’une complication chronographe frappante qui affiche les minutes et les heures sur un seul « monocounter » à 06:00.", nft_number: 10000, user_id: '3')
file10 = URI.open('https://images.stockx.com/images/Patek-Philippe-Nautilus-57121A-Blue-front.jpg?fit=fill&bg=FFFFFF&w=480&h=320&auto=compress&q=90&dpr=1&trim=color&updated_at=1610644436&pad=0&fm=webp')
collectible10.photos.attach(io: file10, filename: 'patekphilippe.jpg', content_type: 'image/jpg')
collectible10.save

puts 'collectivles ok'

nfts = Nft.create!([
  { collectible_id: '1', introduction_price: 2.5, current_price: 2.5, user_id: "3" },
  { collectible_id: '1', introduction_price: 2.5, current_price: 2.5, user_id: "3" },
  { collectible_id: '1', introduction_price: 2.5, current_price: 2.5, user_id: "3" },
  { collectible_id: '1', introduction_price: 2.5, current_price: 2.5, user_id: "3" },
  { collectible_id: '2', introduction_price: 5.5, current_price: 5.5, user_id: "3" },
  { collectible_id: '2', introduction_price: 5.5, current_price: 5.5, user_id: "3" },
  { collectible_id: '2', introduction_price: 5.5, current_price: 5.5, user_id: "3" },
  { collectible_id: '2', introduction_price: 5.5, current_price: 5.5, user_id: "3" },
  { collectible_id: '2', introduction_price: 5.5, current_price: 5.5, user_id: "3" },
  { collectible_id: '3', introduction_price: 5.8, current_price: 5.8, user_id: "3" },
  { collectible_id: '3', introduction_price: 5.8, current_price: 5.8, user_id: "3" },
  { collectible_id: '3', introduction_price: 5.8, current_price: 5.8, user_id: "3" },
  { collectible_id: '3', introduction_price: 5.8, current_price: 5.8, user_id: "3" },
  { collectible_id: '3', introduction_price: 5.8, current_price: 5.8, user_id: "3" },
  { collectible_id: '4', introduction_price: 6.0, current_price: 6.0, user_id: "3" },
  { collectible_id: '4', introduction_price: 6.0, current_price: 6.0, user_id: "3" },
  { collectible_id: '4', introduction_price: 6.0, current_price: 6.0, user_id: "3" },
  { collectible_id: '4', introduction_price: 6.0, current_price: 6.0, user_id: "3" },
  { collectible_id: '4', introduction_price: 6.0, current_price: 6.0, user_id: "3" },
  { collectible_id: '5', introduction_price: 1.3, current_price: 1.3, user_id: "3" },
  { collectible_id: '5', introduction_price: 1.3, current_price: 1.3, user_id: "3" },
  { collectible_id: '5', introduction_price: 1.3, current_price: 1.3, user_id: "3" },
  { collectible_id: '5', introduction_price: 1.3, current_price: 1.3, user_id: "3" },
  { collectible_id: '5', introduction_price: 1.3, current_price: 1.3, user_id: "3" },
  { collectible_id: '6', introduction_price: 1.9, current_price: 1.9, user_id: "3" },
  { collectible_id: '6', introduction_price: 1.9, current_price: 1.9, user_id: "3" },
  { collectible_id: '6', introduction_price: 1.9, current_price: 1.9, user_id: "3" },
  { collectible_id: '6', introduction_price: 1.9, current_price: 1.9, user_id: "3" },
  { collectible_id: '6', introduction_price: 1.9, current_price: 1.9, user_id: "3" },
  { collectible_id: '7', introduction_price: 5.0, current_price: 5.0, user_id: "3" },
  { collectible_id: '7', introduction_price: 5.0, current_price: 5.0, user_id: "3" },
  { collectible_id: '7', introduction_price: 5.0, current_price: 5.0, user_id: "3" },
  { collectible_id: '7', introduction_price: 5.0, current_price: 5.0, user_id: "3" },
  { collectible_id: '7', introduction_price: 5.0, current_price: 5.0, user_id: "3" },
  { collectible_id: '8', introduction_price: 2.1, current_price: 2.1, user_id: "3" },
  { collectible_id: '8', introduction_price: 2.1, current_price: 2.1, user_id: "3" },
  { collectible_id: '8', introduction_price: 2.1, current_price: 2.1, user_id: "3" },
  { collectible_id: '8', introduction_price: 2.1, current_price: 2.1, user_id: "3" },
  { collectible_id: '8', introduction_price: 2.1, current_price: 2.1, user_id: "3" },
  { collectible_id: '9', introduction_price: 6.5, current_price: 6.5, user_id: "3" },
  { collectible_id: '9', introduction_price: 6.5, current_price: 6.5, user_id: "3" },
  { collectible_id: '9', introduction_price: 6.5, current_price: 6.5, user_id: "3" },
  { collectible_id: '9', introduction_price: 6.5, current_price: 6.5, user_id: "3" },
  { collectible_id: '9', introduction_price: 6.5, current_price: 6.5, user_id: "3" },
  { collectible_id: '10', introduction_price: 10.0, current_price: 10.0, user_id: "3" },
  { collectible_id: '10', introduction_price: 10.0, current_price: 10.0, user_id: "3" },
  { collectible_id: '10', introduction_price: 10.0, current_price: 10.0, user_id: "3" },
  { collectible_id: '10', introduction_price: 10.0, current_price: 10.0, user_id: "3" },
  { collectible_id: '10', introduction_price: 10.0, current_price: 10.0, user_id: "3" }
  ])

puts 'All good investors!'

Bid.create!([
  {collectible_id: "1", user_id: "1", bid_price: 1},
  {collectible_id: "2", user_id: "1", bid_price: 2},
  {collectible_id: "3", user_id: "1", bid_price: 3},
  {collectible_id: "4", user_id: "1", bid_price: 1},
  {collectible_id: "5", user_id: "1", bid_price: 2},
  {collectible_id: "6", user_id: "1", bid_price: 3},
  {collectible_id: "7", user_id: "1", bid_price: 1},
  {collectible_id: "8", user_id: "1", bid_price: 2},
  {collectible_id: "9", user_id: "1", bid_price: 3},
  {collectible_id: "10", user_id: "1", bid_price: 1},
  {collectible_id: "1", user_id: "1", bid_price: 2},
  {collectible_id: "2", user_id: "1", bid_price: 3},
  {collectible_id: "3", user_id: "1", bid_price: 1},
  {collectible_id: "4", user_id: "1", bid_price: 2},
  {collectible_id: "5", user_id: "1", bid_price: 3},
  {collectible_id: "6", user_id: "1", bid_price: 1},
  {collectible_id: "7", user_id: "1", bid_price: 2},
  {collectible_id: "8", user_id: "1", bid_price: 3},
  {collectible_id: "9", user_id: "1", bid_price: 1},
  {collectible_id: "10", user_id: "1", bid_price: 8},
  ])

Ask.create!([
  {collectible_id: "1", user_id: "3", ask_price: 5},
  {collectible_id: "2", user_id: "3", ask_price: 5},
  {collectible_id: "3", user_id: "3", ask_price: 5},
  {collectible_id: "4", user_id: "3", ask_price: 5},
  {collectible_id: "5", user_id: "3", ask_price: 5},
  {collectible_id: "6", user_id: "3", ask_price: 5},
  {collectible_id: "7", user_id: "3", ask_price: 5},
  {collectible_id: "8", user_id: "3", ask_price: 5},
  {collectible_id: "9", user_id: "3", ask_price: 5},
  {collectible_id: "10", user_id: "3", ask_price: 5},
  {collectible_id: "1", user_id: "3", ask_price: 6},
  {collectible_id: "2", user_id: "3", ask_price: 6},
  {collectible_id: "3", user_id: "3", ask_price: 6},
  {collectible_id: "4", user_id: "3", ask_price: 6},
  {collectible_id: "5", user_id: "3", ask_price: 6},
  {collectible_id: "6", user_id: "3", ask_price: 6},
  {collectible_id: "7", user_id: "3", ask_price: 6},
  {collectible_id: "8", user_id: "3", ask_price: 6},
  {collectible_id: "9", user_id: "3", ask_price: 6},
  {collectible_id: "10", user_id: "3", ask_price: 6},
  {collectible_id: "1", user_id: "3", ask_price: 7},
  {collectible_id: "2", user_id: "3", ask_price: 7},
  {collectible_id: "3", user_id: "3", ask_price: 7},
  {collectible_id: "4", user_id: "3", ask_price: 7},
  {collectible_id: "5", user_id: "3", ask_price: 7},
  ])
