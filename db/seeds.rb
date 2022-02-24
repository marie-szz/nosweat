# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
Product.destroy_all
Booking.destroy_all
User.destroy_all

users_h = [
  {
    first_name: "Stephen",
    last_name: "Grieves",
    email: "stephen@gmail.com",
    password: "stephen",
    location: "Chamonix",
    photo_url: "stephen.png"
  },
  {
    first_name: "Matthieu",
    last_name: "Flecher",
    email: "matthieu@gmail.com",
    password: "matthieu",
    location: "Chamonix",
    photo_url: "matthieu.jpeg"
  },
  {
    first_name: "Frederic",
    last_name: "Lange",
    email: "fred@gmail.com",
    password: "frederic",
    location: "Paris",
    photo_url: "fred.jpeg"
  },
  {
    first_name: "Maxime",
    last_name: "Plasse",
    email: "maxime@gmail.com",
    password: "maxime",
    location: "Lyon",
    photo_url: "maxime.jpeg"
  },
  {
    first_name: "Maxime",
    last_name: "Beauge",
    email: "maxxx@gmail.com",
    password: "maxime",
    location: "Chamonix",
    photo_url: "max.png"
  },
  {
    first_name: "Marie",
    last_name: "Sepanik",
    email: "marie@gmail.com",
    password: "marieszz",
    location: "Metz",
    photo_url: "marie.png"
  },
  {
    first_name: "Vincent",
    last_name: "Orinel",
    email: "vincent@gmail.com",
    password: "vincent",
    location: "Rennes",
    photo_url: "vincent.jpeg"
  },
  {
    first_name: "Victor",
    last_name: "Branger",
    email: "victor@gmail.com",
    password: "victor",
    location: "Chamonix",
    photo_url: "victor.png"
  },
  {
    first_name: "Diane",
    last_name: "Johnson",
    email: "diane@gmail.com",
    password: "johnson",
    location: "Chamonix",
    photo_url: "diane.jpeg"
  },
  {
    first_name: "Paul",
    last_name: "Lahana",
    email: "paul@gmail.com",
    password: "lahana",
    location: "Chamonix",
    photo_url: "paul.jpeg"
  }
]

users = users_h.map do |user|
  u = User.new(user)
  u.save
  u
end

matthieu = users[1]
maxime = users[3]
victor = users[7]
diane = users[8]
paul = users[9]

p "1"

products_index_simple = [
  {
    sport_category: "Ski",
    name: "Casque",
    price: 5,
    description: "Ce casque à visière propose une protection optimale de la tête et des yeux de votre enfant.",
    quality: "Très bon",
    photos_url: [
      "https://contents.mediadecathlon.com/p2099808/k$7fcf9de6fd798ecaf7359237248b42bd/sq/casque-de-ski-enfant-h-kid-550-rouge.jpg?format=auto&f=646x646"
    ],
    delivery: false,
    size: "M",
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Casque",
    price: 3,
    description: "Ce casque bol, robuste grâce à sa coque en ABS, vous assure une bonne protection, tout en garantissant un look freestyle indémodable.",
    quality: "Moyen",
    photos_url: [
      "https://contents.mediadecathlon.com/p1493628/k$e54d709a2397baea3aae46ea01a89ad0/sq/casque-"
    ],
    delivery: false,
    size: "L",
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Masque",
    price: 2,
    description: "Ce masque confortable est équipé d'un double écran, cela permet de diminuer la formation de buée et de vous garantir une bonne vision par beau temps.",
    quality: "Bon",
    photos_url: [
      "https://contents.mediadecathlon.com/p1178752/k$9272ddbb1fd7e131967b6b68e51d9c6f/sq/masque-"
    ],
    delivery: true,
    size: "S",
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Pantalon",
    price: 4,
    description: "Ce pantalon imperméable a été imaginé pour faire du ski de randonnée quelques soit les conditions climatiques.",
    quality: "Excellent",
    photos_url: [
      "https://contents.mediadecathlon.com/p1895593/k$06f8f87349ab336ffdc88f363d609b2b/sq/pantalo"
    ],
    delivery: true,
    size: "38",
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Pantalon",
    price: 3,
    description: "Ce pantalon a été conçu par notre équipe de freeriders afin de vous le meilleur compromis chaleur / respirabilité, dans toutes les conditions de neige.",
    quality: "Bon",
    photos_url: [
      "https://contents.mediadecathlon.com/p2061873/k$2d74514722cb767f81089f30f6652647/sq/pantalo"
    ],
    delivery: true,
    size: "40",
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Veste",
    price: 4,
    description: "Confort optimum et toutes les fonctionnalités nécessaires pour cette veste ! 100% des coutures étanchées, des zips de ventilation, de la ouate. Tout cela pour vous tenir bien au chaud et au sec.",
    quality: "Bon",
    photos_url: [
      "https://contents.mediadecathlon.com/p1702176/k$75a6f82f9b338dfddb847cf55a3821bc/sq/veste-d"
    ],
    delivery: true,
    size: "38",
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Veste",
    price: 7,
    description: "Veste de Ski/Snow Volcom L Insulated Gore-Tex Jaune Homme.",
    quality: "Très bon",
    photos_url: [
      "https://contents.mediadecathlon.com/m4138339/k$62bbbc60b4c3cf8e223d806ddea97e2c/sq/veste-d"
    ],
    delivery: true,
    size: "L",
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Skis",
    price: 13,
    description: "Un ski destiné à la skieuse confirmée, pour aborder les pistes de manière confortable.",
    quality: "Bon",
    photos_url: [
      "https://contents.mediadecathlon.com/p1874210/k$ab5bf247cc2928b04c548c5e8cf7daaa/sq/ski-de-"
    ],
    delivery: false,
    size: "140cm",
    user: users[8]
  },
  {
    sport_category: "Ski",
    name: "Gants",
    price: 2,
    description: "Des gants souples qui garantissent une bonne isolation thermique tout en offrant une bonne dexterité.",
    quality: "Excellent",
    photos_url: [
      "https://contents.mediadecathlon.com/p1213906/k$7e60644cf2d49a28e961b239bf886452/sq/gant-de"
    ],
    delivery: true,
    size: "M",
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Snowboard",
    price: 15,
    description: "Avec son cambre plat grand rocker et un flex souple fini les fautes de carres. Votre session ne sera que pur fun et apprentissage !",
    quality: "Excellent",
    photos_url: [
      "https://contents.mediadecathlon.com/p2027350/k$e6f906ebf9c7b36c033632256a22da3e/sq/planche"
    ],
    delivery: false,
    size: "152cm",
    user: users[8]
  }
]

p "2"

products_index_kid = [
  {
    sport_category: "Ski",
    name: "Veste",
    price: 3,
    description: "Cette veste de ski est imperméable, chaude et équipée d'une capuche. Elle est idéale pour apprendre le ski dans les meilleures conditions.",
    location: "Chamonix",
    quality: "Très bon",
    photos_url: [
      "https://contents.mediadecathlon.com/p1725769/k$53da5ff2483ba9511132f35824f82f14/sq/veste-d"
    ],
    delivery: true,
    size: "10-12 ans",
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Veste",
    price: 5,
    description: "Veste et manches longues, équipées de manchons avec passe-pouce pour interdire l'entrée de neige au poignet, renfort aux coudes et sur les côtés pour la résistance, jupe pare-neige, porte forfait.",
    location: "Chamonix",
    quality: "Excellent",
    photos_url: [
      "https://contents.mediadecathlon.com/p1888240/k$f20a1d0de768b9de45faa48631d8521e/sq/veste-d"
    ],
    delivery: true,
    size: "10-12 ans",
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Veste",
    price: 3,
    description: "Dotée de coutures 100% étanches, cette veste est idéale pour des journées entières au ski, quelle que soit la météo !",
    location: "Chamonix",
    quality: "Bon",
    photos_url: [
      "https://contents.mediadecathlon.com/p1668466/k$92f5e6e44081b84bc13e2337a44c8242/sq/veste-d"
    ],
    delivery: true,
    size: "10-12 ans",
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Veste",
    price: 4,
    description: "Idéale sur les pistes de ski mais aussi au quotidien par temps froid, cette doudoune sera le parfait allié de votre enfant tout au long de l'hiver!",
    location: "Chamonix",
    quality: "Excellent",
    photos_url: [
      "https://contents.mediadecathlon.com/p2035886/k$31769b94b3c51ff03c8caae05fe798fb/sq/doudoun"
    ],
    delivery: true,
    size: "10-12 ans",
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Veste",
    price: 3,
    description: "Doudoune de ski 100% imperméable assurant un excellent niveau de chaleur.",
    location: "Chamonix",
    quality: "Bon",
    photos_url: [
      "https://contents.mediadecathlon.com/p1861292/k$82ed94004a69e5a991a5c6a02385b5a9/sq/doudoun"
    ],
    delivery: true,
    size: "10-12 ans",
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Pantalon",
    price: 4,
    description: "Chaud, imperméable et respirant, ce pantalon réglable s'ajuste à la taille et en longueur de jambes, pour convenir parfaitement à la morphologie de l'enfant.",
    location: "Chamonix",
    quality: "Bon",
    photos_url: [
      "https://contents.mediadecathlon.com/p1668512/k$9e084c636074a434e9f4da8c49ad7e90/sq/pantalo"
    ],
    delivery: true,
    size: "10-12 ans",
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Pantalon",
    price: 4,
    description: "Ce pantalon de ski est imperméable, chaud et équipé de bretelles réglables et amovibles. Il est idéal pour apprendre le ski dans les meilleures conditions.",
    location: "Chamonix",
    quality: "Très bon",
    photos_url: [
      "https://contents.mediadecathlon.com/p2035861/k$f0d0a92e50064c2d1f4d473fc6627bb2/sq/pantalo"
    ],
    delivery: true,
    size: "10-12 ans",
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Pantalon",
    price: 5,
    description: "Chaud, imperméable et respirant, ce pantalon réglable s'ajuste à la taille et en longueur de jambes, pour convenir parfaitement à la morphologie de l'enfant.",
    location: "Chamonix",
    quality: "Bon",
    photos_url: [
      "https://contents.mediadecathlon.com/p1716919/k$32201104331a1275e6548132c630ad45/sq/pantalo"
    ],
    delivery: true,
    size: "10-12 ans",
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Pantalon",
    price: 6,
    description: "Pantalon de Ski/Snow Volcom Frochickidee Insulated Violet Fille.",
    location: "Chamonix",
    quality: "Excellent",
    photos_url: [
      "https://contents.mediadecathlon.com/m4162841/k$2f9840d4a0005f039eaf0d9dd8a63e68/sq/pantalo"
    ],
    delivery: true,
    size: "10-12 ans",
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Combinaison",
    price: 3,
    description: "Chaude et imperméable, cette combinaison enfant est idéale pour découvrir le ski de piste et profiter confortablement des jeux dans la neige.",
    location: "Chamonix",
    quality: "Excellent",
    photos_url: [
      "https://contents.mediadecathlon.com/p1861084/k$7a5d9ab2da75b2b5fadb582d9205dfc8/sq/combina"
    ],
    delivery: true,
    size: "10-12 ans",
    user: User.all.sample
  }
]

p "3"

products_index_kid_complex = [
  {
    sport_category: "Ski",
    name: "Veste",
    price: 3,
    description: "Doudoune de ski 100% imperméable assurant un excellent niveau de chaleur.",
    quality: "Bon",
    photos_url: [
      "https://contents.mediadecathlon.com/p1861292/k$82ed94004a69e5a991a5c6a02385b5a9/sq/doudoun",
      "https://contents.mediadecathlon.com/p1861215/k$47cd03260375bcdc40326d1bc8bda40f/sq/doudoun",
      "https://contents.mediadecathlon.com/p1861171/k$b7f4552b0d98a1bca9f15b0f7a58552e/sq/doudoun",
      "https://contents.mediadecathlon.com/p1861014/k$a0784756573d2e9bd97b4e6118bdd09c/sq/doudoun",
      "https://contents.mediadecathlon.com/p1861320/k$99d299db19fe97beb109f5330818f7d6/sq/doudoun"
    ],
    delivery: true,
    size: "10-12 ans",
    user: users[3]
  },
  {
    sport_category: "Ski",
    name: "Pantalon",
    price: 4,
    description: "Chaud, imperméable et respirant, ce pantalon réglable s'ajuste à la taille et en longueur de jambes, pour convenir parfaitement à la morphologie de l'enfant.",
    quality: "Bon",
    photos_url: [
      "https://contents.mediadecathlon.com/p1668512/k$9e084c636074a434e9f4da8c49ad7e90/sq/pantalo",
      "https://contents.mediadecathlon.com/p1668725/k$2c5112f5041fa35a5017e2f969dd7227/sq/pantalo",
      "https://contents.mediadecathlon.com/p1668553/k$c6c563d36c34f5808b9d4ed33dd96cd6/sq/pantalo",
      "https://contents.mediadecathlon.com/p1668704/k$64bba02bae5a5a05f2c71d650fb4886f/sq/pantalo",
      "https://contents.mediadecathlon.com/p1668464/k$f0f3bf563892ee6486a50995630c1c49/sq/pantalo"
    ],
    delivery: true,
    size: "10-12 ans",
    user: users[3]
  },
  {
    sport_category: "Ski",
    name: "Skis",
    price: 13,
    description: "Idéal pour faciliter l'apprentissage du ski, des premières traces en chasse neige jusqu'au dérapage sur les pistes.",
    quality: "Bon",
    photos_url: [
      "https://contents.mediadecathlon.com/m4544337/k$713d7f8912f42c9797aac72bc6366410/sq/reconditionne-ski-junior-rossignol-star-wars-fixations-bon.jpg?format=auto&f=646x646",
      "https://contents.mediadecathlon.com/m4544341/k$5938c073566a5d1050a7ed91de1d6b48/sq/reconditionne-ski-junior-rossignol-star-wars-fixations-bon.jpg?format=auto&f=646x646",
      "https://contents.mediadecathlon.com/m4544344/k$ece77bd04a98cfbad8fa3fe1817db923/sq/reconditionne-ski-junior-rossignol-star-wars-fixations-bon.jpg?format=auto&f=646x646",
      "https://contents.mediadecathlon.com/m4544348/k$c73172357c1d2e0b3dc8b0b3c56d2920/sq/reconditionne-ski-junior-rossignol-star-wars-fixations-bon.jpg?format=auto&f=646x646"
    ],
    delivery: true,
    size: "130cm",
    user: users[9]
  },
  {
    sport_category: "Ski",
    name: "Skis",
    price: 15,
    description: "C'est LE ski facilitateur qui va transformer les débutantes en vraies pratiquantes.",
    quality: "Très bon",
    photos_url: [
      "https://contents.mediadecathlon.com/p1874195/k$f14d9ad5425e947de399bc68e6d7a458/sq/ski-de-piste-femme-avec-fixation-cross-150-blanc-et-violet.jpg?format=auto&f=646x646",
      "https://contents.mediadecathlon.com/p1874224/k$f0fbcc75e3b154c54c61dac85b352956/sq/ski-de-piste-femme-avec-fixation-cross-150-blanc-et-violet.jpg?format=auto&f=646x646",
      "https://contents.mediadecathlon.com/p1874152/k$295eda02ca841f24c7dd65dab0c50409/sq/ski-de-piste-femme-avec-fixation-cross-150-blanc-et-violet.jpg?format=auto&f=646x646",
      "https://contents.mediadecathlon.com/p1874209/k$7f953369bc79bb22b25851440b60f9b9/sq/ski-de-piste-femme-avec-fixation-cross-150-blanc-et-violet.jpg?format=auto&f=646x646",
      "https://contents.mediadecathlon.com/p1874267/k$0ad017a176c31857287fda677c915d31/sq/ski-de-piste-femme-avec-fixation-cross-150-blanc-et-violet.jpg?format=auto&f=646x646"
    ],
    delivery: true,
    size: "140cm",
    user: users[7]
  },{
    sport_category: "Ski",
    name: "Skis",
    price: 12,
    description: "Ce ski est très évolutif. La ligne de cotes et la répartition de souplesse procurent à ce ski une réelle aptitude à faire progresser les enfants.",
    quality: "Très bon",
    photos_url: [
      "https://contents.mediadecathlon.com/p1669348/k$56dcca9e32f0b8b0fb35fd26a568d681/sq/ski-de-piste-enfant-avec-fixation-adix-500-violet.jpg?format=auto&f=646x646",
      "https://contents.mediadecathlon.com/p1669409/k$16a9b96aecfd068d068a9150b30c4fb4/sq/ski-de-piste-enfant-avec-fixation-adix-500-violet.jpg?format=auto&f=646x646",
      "https://contents.mediadecathlon.com/p1669447/k$d2f79f12ad1afebd39dfe3e96fae9c56/sq/ski-de-piste-enfant-avec-fixation-adix-500-violet.jpg?format=auto&f=646x646",
      "https://contents.mediadecathlon.com/p1669392/k$9e0fe679cac505a78d88f6ccccec6c5a/sq/ski-de-piste-enfant-avec-fixation-adix-500-violet.jpg?format=auto&f=646x646",
      "https://contents.mediadecathlon.com/p1669454/k$a9b75c3e7fa38859bc8b2968e183befe/sq/ski-de-piste-enfant-avec-fixation-adix-500-violet.jpg?format=auto&f=646x646"
    ],
    delivery: true,
    size: "140cm",
    user: users[1]
  }

]

p "4"

# Index cards avec photo de materiels de ski
products_index_simple.each_with_index do |product, index|
  photo = URI.open(product[:photos_url].first)

  p = Product.new(sport_category: product[:sport_category],
                  name: product[:name],
                  price: product[:price],
                  description: product[:description],
                  quality: product[:quality],
                  delivery: product[:delivery],
                  size: product[:size],
                  user: product[:user])
  p.photos.attach(io: photo, filename: "product#{index}.png", content_type: 'image/png')
  unless p.save
    raise
  end
end

p "5"

# Index cards avec photo de materiels de ski pour enfant
products_index_kid.each_with_index do |product, index|
  photo = URI.open(product[:photos_url].first)
  product_hash = Product.new(sport_category: product[:sport_category],
                             name: product[:name],
                             price: product[:price],
                             description: product[:description],
                             quality: product[:quality],
                             delivery: product[:delivery],
                             size: product[:size],
                             user: product[:user]
                            )
  product_hash.photos.attach(io: photo, filename: "product#{index}-#.png", content_type: 'image/png')
  unless product_hash.save
    raise
  end
end

p "6"

# Show cards avec photo de materiels de ski pour enfant
products_index_kid_complex.each_with_index do |product, index|
  product_hash = Product.new(sport_category: product[:sport_category],
                             name: product[:name],
                             price: product[:price],
                             description: product[:description],
                             quality: product[:quality],
                             delivery: product[:delivery],
                             size: product[:size],
                             user: product[:user]
                            )
  product[:photos_url].each do |photo_url|
    photo_url_opened = URI.open(photo_url)
    product_hash.photos.attach(io: photo_url_opened, filename: "product#{index}.png", content_type: 'image/png')
  end

  unless product_hash.save
    raise
  end
end

p "7"
