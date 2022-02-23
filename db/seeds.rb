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

new_user = {
  first_name: "Stephen",
  last_name: "Grieves",
  email: "stephen@gmail.com",
  password: "stephen",
  location: "Chamonix"
}

p "1"

products_index_simple = [
  {
    sport_category: "Ski",
    name: "Casque",
    price: 5,
    description: "Ce casque à visière propose une protection optimale de la tête et des yeux de votre enfant.",
    location: "Chamonix",
    quality: "Très bon état",
    photos_url: [
      "https://contents.mediadecathlon.com/p2099808/k$7fcf9de6fd798ecaf7359237248b42bd/sq/casque-de-ski-enfant-h-kid-550-rouge.jpg?format=auto&f=646x646"
    ],
    delivery: false,
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Casque",
    price: 3,
    description: "Ce casque bol, robuste grâce à sa coque en ABS, vous assure une bonne protection, tout en garantissant un look freestyle indémodable.",
    location: "Chamonix",
    quality: "Moyen",
    photos_url: [
      "https://contents.mediadecathlon.com/p1493628/k$e54d709a2397baea3aae46ea01a89ad0/sq/casque-"
    ],
    delivery: false,
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Masque",
    price: 2,
    description: "Ce masque confortable est équipé d'un double écran, cela permet de diminuer la formation de buée et de vous garantir une bonne vision par beau temps.",
    location: "Chamonix",
    quality: "Bon",
    photos_url: [
      "https://contents.mediadecathlon.com/p1178752/k$9272ddbb1fd7e131967b6b68e51d9c6f/sq/masque-"
    ],
    delivery: true,
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Pantalon",
    price: 4,
    description: "Ce pantalon imperméable a été imaginé pour faire du ski de randonnée quelques soit les conditions climatiques.",
    location: "Chamonix",
    quality: "Excellent",
    photos_url: [
      "https://contents.mediadecathlon.com/p1895593/k$06f8f87349ab336ffdc88f363d609b2b/sq/pantalo"
    ],
    delivery: true,
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Pantalon",
    price: 3,
    description: "Ce pantalon a été conçu par notre équipe de freeriders afin de vous le meilleur compromis chaleur / respirabilité, dans toutes les conditions de neige.",
    location: "Chamonix",
    quality: "Bon",
    photos_url: [
      "https://contents.mediadecathlon.com/p2061873/k$2d74514722cb767f81089f30f6652647/sq/pantalo"
    ],
    delivery: true,
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Veste",
    price: 4,
    description: "Confort optimum et toutes les fonctionnalités nécessaires pour cette veste ! 100% des coutures étanchées, des zips de ventilation, de la ouate. Tout cela pour vous tenir bien au chaud et au sec.",
    location: "Chamonix",
    quality: "Bon",
    photos_url: [
      "https://contents.mediadecathlon.com/p1702176/k$75a6f82f9b338dfddb847cf55a3821bc/sq/veste-d"
    ],
    delivery: true,
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Veste",
    price: 7,
    description: "Veste de Ski/Snow Volcom L Insulated Gore-Tex Jaune Homme.",
    location: "Chamonix",
    quality: "Très Bon",
    photos_url: [
      "https://contents.mediadecathlon.com/m4138339/k$62bbbc60b4c3cf8e223d806ddea97e2c/sq/veste-d"
    ],
    delivery: true,
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Skis",
    price: 13,
    description: "Un ski destiné à la skieuse confirmée, pour aborder les pistes de manière confortable.",
    location: "Chamonix",
    quality: "Bon",
    photos_url: [
      "https://contents.mediadecathlon.com/p1874210/k$ab5bf247cc2928b04c548c5e8cf7daaa/sq/ski-de-"
    ],
    delivery: false,
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Gants",
    price: 2,
    description: "Des gants souples qui garantissent une bonne isolation thermique tout en offrant une bonne dexterité.",
    location: "Chamonix",
    quality: "Excellent",
    photos_url: [
      "https://contents.mediadecathlon.com/p1213906/k$7e60644cf2d49a28e961b239bf886452/sq/gant-de"
    ],
    delivery: true,
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Snowboard",
    price: 15,
    description: "Avec son cambre plat grand rocker et un flex souple fini les fautes de carres. Votre session ne sera que pur fun et apprentissage !",
    location: "Chamonix",
    quality: "Excellent",
    photos_url: [
      "https://contents.mediadecathlon.com/p2027350/k$e6f906ebf9c7b36c033632256a22da3e/sq/planche"
    ],
    delivery: false,
    user: User.all.sample
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
    quality: "Très bon état",
    photos_url: [
      "https://contents.mediadecathlon.com/p1725769/k$53da5ff2483ba9511132f35824f82f14/sq/veste-d"
    ],
    delivery: true,
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
    user: User.all.sample
  },
  {
    sport_category: "Ski",
    name: "Pantalon",
    price: 4,
    description: "Ce pantalon de ski est imperméable, chaud et équipé de bretelles réglables et amovibles. Il est idéal pour apprendre le ski dans les meilleures conditions.",
    location: "Chamonix",
    quality: "Très Bon",
    photos_url: [
      "https://contents.mediadecathlon.com/p2035861/k$f0d0a92e50064c2d1f4d473fc6627bb2/sq/pantalo"
    ],
    delivery: true,
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
    location: "Chamonix",
    quality: "Bon",
    photos_url: [
      "https://contents.mediadecathlon.com/p1861292/k$82ed94004a69e5a991a5c6a02385b5a9/sq/doudoun",
      "https://contents.mediadecathlon.com/p1861215/k$47cd03260375bcdc40326d1bc8bda40f/sq/doudoun",
      "https://contents.mediadecathlon.com/p1861171/k$b7f4552b0d98a1bca9f15b0f7a58552e/sq/doudoun",
      "https://contents.mediadecathlon.com/p1861014/k$a0784756573d2e9bd97b4e6118bdd09c/sq/doudoun",
      "https://contents.mediadecathlon.com/p1861320/k$99d299db19fe97beb109f5330818f7d6/sq/doudoun"
    ],
    delivery: true,
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
      "https://contents.mediadecathlon.com/p1668512/k$9e084c636074a434e9f4da8c49ad7e90/sq/pantalo",
      "https://contents.mediadecathlon.com/p1668725/k$2c5112f5041fa35a5017e2f969dd7227/sq/pantalo",
      "https://contents.mediadecathlon.com/p1668553/k$c6c563d36c34f5808b9d4ed33dd96cd6/sq/pantalo",
      "https://contents.mediadecathlon.com/p1668704/k$64bba02bae5a5a05f2c71d650fb4886f/sq/pantalo",
      "https://contents.mediadecathlon.com/p1668464/k$f0f3bf563892ee6486a50995630c1c49/sq/pantalo"
    ],
    delivery: true,
    user: User.all.sample
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
                  location: product[:location],
                  quality: product[:quality],
                  delivery: product[:delivery],
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
                             location: product[:location],
                             quality: product[:quality],
                             delivery: product[:delivery],
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
                             location: product[:location],
                             quality: product[:quality],
                             delivery: product[:delivery],
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
