# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# // Exposition= ['N', 'S', 'E', 'W']
# // Climate = ['Temperate", "Warm", "Cold"]
# // watering = {"lot": 3, "some": 2, "little": 1
# // category = ['Flower', 'aromatc', 'Fruit', 'Vegetable', 'Leaf plant']

leaf_plants = [
  {
    name: "Boston Fern",
    category: "Leaf plant",
    description: "A delicate fern with feather-like and elegant fronds.",
    climate: "Warm",
    exposure: "E",
    watering: 1,
    plant_care: "Avoid drafts and regularly mist the leaves to maintain humidity."
  },
  {
    name: "Sacred Bamboo",
    category: "Leaf plant",
    description: "A fast-growing evergreen shrub with lance-shaped dark green leaves.",
    climate: "Warm",
    exposure: "O",
    watering: 2,
    plant_care: "Prune regularly to maintain a compact shape."
  },
  {
    name: "Ivy",
    category: "Leaf plant",
    description: "A climbing plant with dark green, shiny, heart-shaped leaves.",
    climate: "Warm",
    exposure: "O",
    watering: 1,
    plant_care: "Attach the ivy to a support to help with growth."
  },
  {
    name: "Agave",
    category: "Leaf plant",
    description: "A succulent plant with thick, pointed leaves that form a rosette.",
    climate: "temperate",
    exposure: "S",
    watering: 3,
    plant_care: "Avoid watering the leaves to prevent fungal diseases."
  },
  {
    name: "Lavender",
    category: "Leaf plant",
    description: "An aromatic plant with narrow gray leaves and fragrant purple flowers.",
    climate: "warm",
    exposure: "S",
    watering: 1,
    plant_care: "Prune regularly to promote growth."
  },
  {
    name: "Winter Jasmine",
    category: "Leaf plant",
    description: "An evergreen shrub with white, fragrant flowers that bloom in winter.",
    climate: "cold",
    exposure: "N",
    watering: 1,
    plant_care: "Prune after flowering to encourage new growth."
  },
  {
    name: "Hydrangea",
    category: "Leaf plant",
    description: "A flowering shrub with large, showy blooms in shades of pink, blue, white, and purple.",
    climate: "temperate",
    exposure: "O",
    watering: 3,
    plant_care: "Prune in late winter or early spring before new growth appears."
  },
  {
    Name: "Mimosa",
    category: "Leaf plant",
    Description: "A shrub or tree with bright yellow, fluffy flowers that bloom in winter and spring.",
    climate: "cold",
    exposure: "s",
    watering: 2,
    plant_care: "Protect from frost and prune after flowering to maintain shape."
  }
]

leaf_plants.each do |plant|
  Plant.create(plant)
  p "."
end

aromatics = [
  {
    name: "Basil",
    category: "aromatic",
    description: "Basil is an annual herb appreciated for its fresh and sweet taste.",
    climate: "Temperate",
    exposure: "S",
    watering: 2,
    plant_care: "Water regularly and pinch the leaves to promote plant growth."
  },
  {
    name: "Parsley",
    category: "aromatic",
    description: "Parsley is an annual herbaceous plant, often used as a condiment.",
    climate: "Temperate",
    exposure: "S",
    watering: 2,
    plant_care: "Water regularly and harvest the leaves as soon as they are big enough."
  },
  {
    name: "Thyme",
    category: "aromatic",
    description: "Thyme is a perennial plant appreciated for its aromatic leaves.",
    climate: "Temperate",
    exposure: "S",
    watering: 2,
    plant_care: "Prune the plant after flowering to promote the growth of new shoots."
  },
  {
    name: "Mint",
    category: "aromatic",
    description: "Mint is a perennial plant appreciated for its fresh and menthol taste.",
    climate: "Temperate",
    exposure: "O",
    watering: 2,
    plant_care: "Water regularly and pinch the leaves to promote plant growth."
  },
  {
    name: "Rosemary",
    category: "aromatic",
    description: "Rosemary is a perennial plant appreciated for its aromatic leaves.",
    climate: "Temperate",
    exposure: "S",
    watering: 2,
    plant_care: "Prune the plant after flowering to promote the growth of new shoots."
  },
  {
    name: "Estragon",
    category: "aromatic",
    description: "Estragon is a perennial plant appreciated for its aromatic leaves, which are often used in cooking.",
    climate: "Temperate",
    exposure: "S",
    watering: 2,
    plant_care: "Water regularly and pinch the leaves to promote plant growth."
  },
  {
    name: "Chives",
    category: "aromatic",
    description: "Chives are a popular herb in French cuisine. They have a mild, slightly oniony taste.",
    climate: "Temperate",
    exposure: "O",
    watering: 2,
    plant_care: "Chives can be grown from seeds or plants. They thrive in nutrient-rich, well-draining soil and require regular watering. Regular pruning is necessary to encourage healthy growth. Chives can be harvested by cutting the leaves at the base of the plant."
  }
]
aromatics.each do |plant|
  Plant.create(plant)
  p "."
end
flowers = [
  {
    name: "Rose",
    category: "flower",
    description: "A perennial plant with prickly stems and fragrant flowers.",
    climate: "Temperate",
    exposure: "O",
    watering: 2,
    plant_care: "Prune at the beginning of spring and provide ample water during the growing season."
  },
  {
    name: "Sunflower",
    category: "flower",
    description: "A plant with yellow flowers and edible stems.",
    climate: "Warm",
    exposure: "S",
    watering: 2,
    plant_care: "Support tall stems with stakes or trellises, water regularly."
  },
  {
    name: "Tulip",
    category: "flower",
    description: "A spring-blooming plant with brightly colored flowers.",
    climate: "temperate",
    exposure: "S",
    watering: 2,
    plant_care: "Plant bulbs in the fall, allow leaves to dry naturally before removing them."
  },
  {
    name: "Daisy",
    category: "flower",
    description: "A small plant with white or yellow flowers and a yellow center.",
    climate: "Temperate",
    exposure: "E",
    watering: 2,
    plant_care: "Regularly remove faded flowers to encourage continuous blooming."
  },
  {
    name: "Lilac",
    category: "flower",
    description: "A fragrant flowering plant with purple, pink, or white flowers.",
    climate: "Temperate",
    exposure: "O",
    watering: 2,
    plant_care: "Prune after flowering to shape and control growth."
  },
  {
    name: "Iris",
    category: "flower",
    description: "A plant with sword-shaped leaves and large spectacular flowers.",
    climate: "Temperate",
    exposure: "E",
    watering: 2,
    plant_care: "Divide clumps every 3-4 years to maintain plant health."
  },
  {
    name: "Flower",
    category: "flower",
    description: "A plant with large clusters of pink, blue, and white flowers.",
    climate: "Temperate",
    exposure: "E",
    watering: 2,
    plant_care: "Prune in late winter or early spring and water regularly during the growing season."
  }
]
flowers.each do |plant|
  Plant.create(plant)
  p "."
end

fruits = [
  {
    name: "Apple",
    category: "fruit",
    description: "A sweet and crunchy fruit with red, green, or yellow skin.",
    climate: "Temperate",
    exposure: "S",
    watering: 2,
    plant_care: "Regularly prune to maintain the shape of the tree and water regularly during the growing season."
  },
  {
    name: "Strawberry",
    category: "Fruit",
    Description: "A low-growing, perennial plant with white or pink flowers and red, juicy fruit with small seeds on the surface.",
    climate: "temperate",
    Exposure: "S",
    watering: 2,
    plant_care: "Plant in well-draining soil and protect fruit from slugs and birds."
  },
  {
    name: "Raspberry",
    category: "Fruit",
    Description: "A perennial plant with thorny canes that produce red, black, or yellow fruit with a hollow core.",
    Climate: "temperate",
    Exposure: "S",
    watering: 2,
    plant_care: "Prune canes that have borne fruit and protect fruit from birds and insects."
  },
  {
    name: "Banana",
    category: "fruit",
    description: "A sweet and tropical fruit with yellow skin.",
    climate: "Warm",
    exposure: "S",
    watering: 2,
    plant_care: "Regularly fertilize to promote growth and water regularly to maintain soil moisture."
  },
  {
    name: "Orange",
    category: "fruit",
    description: "A juicy and sweet fruit with orange skin.",
    climate: "Warm",
    exposure: "S",
    watering: 2,
    plant_care: "Prune in late winter or early spring to promote growth of new shoots and water regularly during the growing season."
  },
  {
    name: "Grape",
    category: "fruit",
    description: "A sweet and juicy fruit often used for making wine.",
    climate: "Temperate",
    exposure: "S",
    watering: 2,
    plant_care: "Prune in winter to maintain the shape of the vine and water regularly during the growing season."
  },
  {
    name: "Pear",
    category: "fruit",
    description: "A juicy and sweet fruit with yellow or green skin.",
    climate: "Temperate",
    exposure: "N",
    watering: 2,
    plant_care: "Prune regularly to maintain the shape of the tree and water regularly during the growing season."
  },
  {
    name: "Kiwi",
    category: "fruit",
    description: "A sweet and tangy fruit with brown fuzzy skin.",
    climate: "Temperate",
    exposure: "S",
    watering: 1,
    plant_care: "Prune in winter to maintain the shape of the vine and water regularly during the growing season."
  },
  {
    name: "Peach",
    category: "fruit",
    description: "A juicy and sweet fruit with velvety skin.",
    climate: "Temperate",
    exposure: "S",
    watering: 2,
    plant_care: "Prune in late winter or early spring to promote the growth of new shoots and water regularly during the growing season."
  }
]

fruits.each do |plant|
  Plant.create(plant)
  p "."
end

vegetables = [
  {
    name: "Tomato",
    category: "vegetable",
    description: "A red, yellow, or green fruit often used as a vegetable.",
    climate: "Temperate",
    exposure: "O",
    watering: 2,
    plant_care: "Stake the plants to keep them upright and water regularly to maintain soil moisture."
  },
  {
    name: "Radish",
    category: "Vegetable",
    Description: "A fast-growing, cool-season root vegetable with a crispy texture and a peppery taste.",
    climate: "temperate",
    Exposure: "0",
    watering: 1,
    plant_care: "Plant seeds in succession every few weeks for a continuous harvest."
  },
  {
    name: "Endive",
    category: "vegetable",
    Description: "A leafy vegetable with a slightly bitter taste and crunchy texture, often used in salads or cooked dishes.",
    climate: "cold",
    Exposure: "E",
    watering: 1,
    plant_care: "To produce blanched leaves, cover the plants with a dark cloth or board a few weeks before harvest."
  },
  {
    name: "Carrot",
    category: "vegetable",
    description: "A sweet root often eaten raw or cooked.",
    climate: "Temperate",
    exposure: "E",
    watering: 1,
    plant_care: "Plant seeds shallowly and water regularly to maintain soil moisture. Thin out the plants to give them space to grow."
  },
  {
    name: "Zucchini",
    category: "vegetable",
    description: "A long green vegetable often used in cooking.",
    climate: "warm",
    exposure: "O",
    watering: 1,
    plant_care: "Water regularly to maintain soil moisture and harvest zucchinis before they become too large."
  },
  {
    Name: "Cucumber",
    category: "Vegetable",
    Description: "A fast-growing vine plant with elongated, green fruit and a mild, refreshing taste.",
    climate: "Warm temperate to tropical",
    Exposure: "o",
    watering: 2,
    plant_care: "Provide support for the vines to climb and harvest fruit when they are still small for the best taste."
  },
  {
    name: "Potato",
    category: "vegetable",
    description: "A root often used as a vegetable or starch.",
    climate: "Temperate ",
    exposure: "N",
    watering: 1,
    plant_care: "Mound soil around plants to encourage tuber growth and water regularly to maintain soil moisture. Harvest potatoes after the plant's aerial parts die off."
  },
  {
    name: "Green Bean",
    category: "vegetable",
    description: "A green vegetable often consumed cooked or canned.",
    climate: "Temperate",
    exposure: "O",
    watering: 2,
    plant_care: "Stake the plants to keep them upright and water regularly to maintain soil moisture."
}
]

vegetables.each do |plant|
  Plant.create(plant)
  p "."
end
