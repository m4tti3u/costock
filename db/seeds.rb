# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Nft.destroy_all
Collectible.destroy_all
User.destroy_all

users = User.create!([
  { first_name: 'Luc', last_name: 'Laurent', username: 'Luc07', email: 'luc@gmail.com', password: 'azerty'},
  { first_name: 'Thibault', last_name: 'Fitte', username: 'melitapis', email: 'tibo@gmail.com', password: 'azerty'},
  { first_name: 'Pierre', last_name: 'Clouté-Cazalaa', username: 'Kazalaa', email: 'pierre@gmail.com', password: 'azerty'},
  { first_name: 'Matthieu', last_name: 'Assié', username: 'm4tti3u', email: 'matt@gmail.com', password: 'azerty'},
  ])
  puts User.last.id

collectibles = Collectible.create!([
  { category: 'sneakers', brand: 'Nike', model: 'Air Jordan 1 X Travis Scott X Fragment', reference: 'NK-AJ1-TS-FRG', retail_price: 180.0, resell_value: 2488.9, description: 'Une paire révolutionnaire melant la créativité de 3 artistes de génies', nft_number: 1000, user_id: '1'},
  { category: 'sneakers', brand: 'Nike', model: 'Air Jordan 1 X Travis Scott X Fragment', reference: 'NK-AJ1-TS-FRG', retail_price: 180.0, resell_value: 2488.9, description: 'Une paire révolutionnaire melant la créativité de 3 artistes de génies', nft_number: 1000, user_id: '1'},
  { category: 'sneakers', brand: 'Adidas', model: 'NMD X Chanel', reference: 'AD-NMD-CH', retail_price: 200.0, resell_value: 5367.9, description: 'Une paire révolutionnaire melant la créativité de 3 artistes de génies', nft_number: 100, user_id: '1'},
  { category: 'sneakers', brand: 'Nike', model: 'Air Jordan 1 1985 Chicago', reference: 'NK-AJ1-CH-1985', retail_price: 60.0, resell_value: 5200.0, description: 'Une paire révolutionnaire melant la créativité de 3 artistes de génies', nft_number: 100, user_id: '1'},
  { category: 'cards', brand: 'Pokemon', model: 'Dracofeu 1st edition', reference: 'PK-DCF-1ST-PGA10', retail_price: 1.0, resell_value: 500000.0, description: 'Une carte mythique pour toutes les générations fans de Pokemon dans un état immaculé', nft_number: 10000, user_id: '2'},
  { category: 'cards', brand: 'Pokemon', model: 'Blastoise 1st edition', reference: 'PK-BST-1ST-PGA8.5', retail_price: 1.0, resell_value: 12408.0, description: 'Une carte mythique pour toutes les générations fans de Pokemon dans un état immaculé', nft_number: 1000, user_id: '1'},
  { category: 'cards', brand: 'Panini Revolution', model: '2019-20 Revolution Infinite Holographic Kobe Bryant', reference: 'PZ-KB-HOLO', retail_price: 10.0, resell_value: 18090.1, description: 'Une carte magnifique', nft_number: 1000, user_id: '1'},
  { category: 'cards', brand: 'Pokemon', model: 'Booster Pack 1st edition', reference: 'PK-BSTR-1ST', retail_price: 19.0, resell_value: 488.9, description: 'Un paquet de cartes Pokemon dans un état immaculé', nft_number: 100, user_id: '1'},
  { category: 'watches', brand: 'Rolex', model: 'Day-Date', reference: 'RO-AJ1-TS-FRG', retail_price: 11080.0, resell_value: 20240.0, description: "L'imperméabilité, la précision, le bon fonctionnement et l'état de cette Rolex ont été minutieusement inspectés afin de déterminer le degré de remise en état requis pour répondre à nos normes strictes. Nous avons également étudié sa documentation technique et les archives du fabricant, quand cela s'est avéré possible, afin de garantir l'authenticité de la montre et son passé irréprochable. Pour votre tranquillité d'esprit, toutes nos montres s'accompagnent d'une garantie de 24 mois.", nft_number: 10000, user_id: '1'},
  { category: 'watches', brand: 'Audemars Piguet', model: 'Royal Oak', reference: 'AP-RO-2002', retail_price: 180.0, resell_value: 63740.0, description: "La précision, le bon fonctionnement et l'état de cette Audemars Piguet ont été minutieusement inspectés dans notre centre de réparation Audemars Piguet certifié afin de déterminer le degré de remise en état requis pour répondre à nos normes strictes. Elle a également été comparée à nos archives afin de garantir son authenticité. Pour votre tranquillité d'esprit, nos montres s'accompagnent d'une garantie de 24 mois, ainsi que de toute période restante sur la garantie du fabricant couvrant un produit neuf ou révisé.", nft_number: 10000, user_id: '1'},
  { category: 'watches', brand: 'Patek Philippe', model: 'Nautilus', reference: 'PP-NTLS-2019', retail_price: 40000.0, resell_value: 99000.9, description: "Conçu à l’origine en 1976, le Nautilus a très peu changé au fil des ans. L’affaire est toujours bridé ensemble par les épinglés « oreilles », inspirés par les charnières sur les hublots. Il dispose encore d’autres traits de la bien-aimée de conception trop : la lunette aux multiples facettes ; le cadran simple, gravé ; l’intégré, s’effilant bracelet ; et un profil mince, souvent négligée par les concepteurs modernes. Le Nautilus est à peu près aussi bon que get montres de sport et provient de l’un des plus célèbres horlogers dans le monde. Ce modèle exquis dispose d’une complication chronographe frappante qui affiche les minutes et les heures sur un seul « monocounter » à 06:00.", nft_number: 10000, user_id: '1'},
  ])
  puts 'collectivles ok'

nfts = Nft.create!([
  { collectible_id: '1', introduction_price: 2.5, current_price: 2.5, user_id: "1" },
  { collectible_id: '1', introduction_price: 2.5, current_price: 2.5, user_id: "1" },
  { collectible_id: '1', introduction_price: 2.5, current_price: 2.5, user_id: "1" },
  { collectible_id: '1', introduction_price: 2.5, current_price: 2.5, user_id: "1" },
  { collectible_id: '2', introduction_price: 5.5, current_price: 5.5, user_id: "1" },
  { collectible_id: '2', introduction_price: 5.5, current_price: 5.5, user_id: "1" },
  { collectible_id: '2', introduction_price: 5.5, current_price: 5.5, user_id: "1" },
  { collectible_id: '2', introduction_price: 5.5, current_price: 5.5, user_id: "1" },
  { collectible_id: '2', introduction_price: 5.5, current_price: 5.5, user_id: "1" },
  { collectible_id: '3', introduction_price: 5.8, current_price: 5.8, user_id: "1" },
  { collectible_id: '3', introduction_price: 5.8, current_price: 5.8, user_id: "1" },
  { collectible_id: '3', introduction_price: 5.8, current_price: 5.8, user_id: "1" },
  { collectible_id: '3', introduction_price: 5.8, current_price: 5.8, user_id: "1" },
  { collectible_id: '3', introduction_price: 5.8, current_price: 5.8, user_id: "1" },
  { collectible_id: '4', introduction_price: 6.0, current_price: 6.0, user_id: "1" },
  { collectible_id: '4', introduction_price: 6.0, current_price: 6.0, user_id: "1" },
  { collectible_id: '4', introduction_price: 6.0, current_price: 6.0, user_id: "1" },
  { collectible_id: '4', introduction_price: 6.0, current_price: 6.0, user_id: "1" },
  { collectible_id: '4', introduction_price: 6.0, current_price: 6.0, user_id: "1" },
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
  { collectible_id: '8', introduction_price: 2.1, current_price: 2.1, user_id: "4" },
  { collectible_id: '8', introduction_price: 2.1, current_price: 2.1, user_id: "4" },
  { collectible_id: '8', introduction_price: 2.1, current_price: 2.1, user_id: "4" },
  { collectible_id: '8', introduction_price: 2.1, current_price: 2.1, user_id: "4" },
  { collectible_id: '8', introduction_price: 2.1, current_price: 2.1, user_id: "4" },
  { collectible_id: '9', introduction_price: 6.5, current_price: 6.5, user_id: "4" },
  { collectible_id: '9', introduction_price: 6.5, current_price: 6.5, user_id: "4" },
  { collectible_id: '9', introduction_price: 6.5, current_price: 6.5, user_id: "4" },
  { collectible_id: '9', introduction_price: 6.5, current_price: 6.5, user_id: "4" },
  { collectible_id: '9', introduction_price: 6.5, current_price: 6.5, user_id: "4" },
  { collectible_id: '10', introduction_price: 10.0, current_price: 10.0, user_id: "4" },
  { collectible_id: '10', introduction_price: 10.0, current_price: 10.0, user_id: "4" },
  { collectible_id: '10', introduction_price: 10.0, current_price: 10.0, user_id: "4" },
  { collectible_id: '10', introduction_price: 10.0, current_price: 10.0, user_id: "4" },
  { collectible_id: '10', introduction_price: 10.0, current_price: 10.0, user_id: "4" }
  ])

puts 'All good investors!'
