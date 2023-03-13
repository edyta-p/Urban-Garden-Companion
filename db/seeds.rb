# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create!(name: "Luke", movie: movies.first)

# // Exposition= ['N', 'S', 'E', 'W']
# // Climate = ['Temperate", "Warm", "Cold"]
# // watering = {"Lot": 3, "Some": 2, "Little": 1
# // category = ['Flower', 'Aromatc', 'Fruit', 'Vegetable', 'Leaf plants']

Plant.destroy_all

leaf_plants = [
  {
    name: "Fern",
    category: "Leaf plants",
    description: "A delicate fern with feather-like and elegant fronds.",
    climate: "Warm",
    exposure: "E",
    watering: 1,
    plant_care: "Avoid drafts and regularly mist the leaves to maintain humidity."
  },
  {
    name: "Yucca",
    category: "Leaf plants",
    description: "A hardy plant with long, sword-shaped leaves that can grow up to several feet tall. Yuccas can also produce white or yellow flowers in the right conditions.",
    climate: "Warm",
    exposure: "E",
    watering: 2,
    plant_care: "Yuccas prefer well-draining soil and can tolerate drought, but avoid overwatering as it can lead to root.",
  },
  {
    name: "Aucuba",
    category: "Leaf plants",
    description: "A slow-growing evergreen shrub with glossy, leathery leaves that are variegated with yellow or gold. Aucuba can also produce small, red berries in the right conditions.",
    climate: "Temperate",
    exposure: "W",
    watering: 2,
    plant_care: "Aucuba is a hardy plant that can tolerate low light and cool temperatures, but avoid exposing it to direct sunlight as it can burn the leaves.",
 },
  {
    name: "Bamboo",
    category: "Leaf plants",
    description: "A fast-growing evergreen shrub with lance-shaped dark green leaves.",
    climate: "Warm",
    exposure: "W",
    watering: 2,
    plant_care: "Prune regularly to maintain a compact shape."
  },
  {
    name: "Ivy",
    category: "Leaf plants",
    description: "A climbing plant with dark green, shiny, heart-shaped leaves.",
    climate: "Warm",
    exposure: "W",
    watering: 1,
    plant_care: "Attach the ivy to a support to help with growth."
  },
  {
    name: "Agave",
    category: "Leaf plants",
    description: "A succulent plant with thick, pointed leaves that form a rosette.",
    climate: "Temperate",
    exposure: "S",
    watering: 3,
    plant_care: "Avoid watering the leaves to prevent fungal diseases."
  }
]

leaf_plants.each do |plant|
  Plant.create!(plant)
end

Aromatics = [
  {
    name: "Basil",
    category: "Aromatics",
    description: "Basil is an annual herb appreciated for its fresh and sweet taste.",
    climate: "Temperate",
    exposure: "S",
    watering: 2,
    plant_care: "Water regularly and pinch the leaves to promote plant growth."
  },
  {
    name: "Parsley",
    category: "Aromatics",
    description: "Parsley is an annual herbaceous plant, often used as a condiment.",
    climate: "Temperate",
    exposure: "S",
    watering: 2,
    plant_care: "Water regularly and harvest the leaves as soon as they are big enough."
  },
  {
    name: "Thyme",
    category: "Aromatics",
    description: "Thyme is a perennial plant appreciated for its Aromatics leaves.",
    climate: "Temperate",
    exposure: "S",
    watering: 2,
    plant_care: "Prune the plant after flowering to promote the growth of new shoots."
  },
  {
    name: "Mint",
    category: "Aromatics",
    description: "Mint is a perennial plant appreciated for its fresh and menthol taste.",
    climate: "Temperate",
    exposure: "W",
    watering: 2,
    plant_care: "Water regularly and pinch the leaves to promote plant growth."
  },
  {
    name: "Rosemary",
    category: "Aromatics",
    description: "Rosemary is a perennial plant appreciated for its Aromatics leaves.",
    climate: "Temperate",
    exposure: "S",
    watering: 2,
    plant_care: "Prune the plant after flowering to promote the growth of new shoots."
  },
  {
    name: "Estragon",
    category: "Aromatics",
    description: "Estragon is a perennial plant appreciated for its Aromatics leaves, which are often used in cooking.",
    climate: "Temperate",
    exposure: "S",
    watering: 2,
    plant_care: "Water regularly and pinch the leaves to promote plant growth."
  },
  {
    name: "Chives",
    category: "Aromatics",
    description: "Chives are a popular herb in French cuisine. They have a mild, slightly oniony taste.",
    climate: "Temperate",
    exposure: "W",
    watering: 2,
    plant_care: "Chives can be grown from seeds or plants. They thrive in nutrient-rich, well-draining soil and require regular watering. Regular pruning is necessary to encourage healthy growth. Chives can be harvested by cutting the leaves at the base of the plant."
  },
  { ## Cilantro
    name: "Cilantro",
    category: "Aromatics",
    description: "Cilantro is a strong, distinctive-smelling herb that's often used in Mexican and Indian cooking. Cilantro has a sweet, vegetal, and pungent aroma and an earthy, herbaceous, and bright, grassy taste.",
    climate: "Temperate",
    exposure: "W",
    watering: 2,
    plant_care: "Keep the soil regularly moist, but not soaked. Good drainage is essential, as cilantro has deep roots. Use an organic fertilizer or fortify the soil with compost. Feed the herb once a month."
  }
]
Aromatics.each do |plant|
  Plant.create!(plant)
end
flowers = [
  {
    name: "Rose",
    category: "Flowers",
    description: "A perennial plant with prickly stems and fragrant flowers.",
    climate: "Temperate",
    exposure: "W",
    watering: 2,
    plant_care: "Prune at the beginning of spring and provide ample water during the growing season."
  },
  {
    name: "Sunflower",
    category: "Flowers",
    description: "A plant with yellow flowers and edible stems.",
    climate: "Warm",
    exposure: "S",
    watering: 2,
    plant_care: "Support tall stems with stakes or trellises, water regularly."
  },
  {
    name: "Tulip",
    category: "Flowers",
    description: "A spring-blooming plant with brightly colored flowers.",
    climate: "Temperate",
    exposure: "S",
    watering: 2,
    plant_care: "Plant bulbs in the fall, allow leaves to dry naturally before removing them."
  },
  {
    name: "Daisy",
    category: "Flowers",
    description: "A small plant with white or yellow flowers and a yellow center.",
    climate: "Temperate",
    exposure: "E",
    watering: 2,
    plant_care: "Regularly remove faded flowers to encourage continuous blooming."
  },
  {
    name: "Lilac",
    category: "Flowers",
    description: "A fragrant flowering plant with purple, pink, or white flowers.",
    climate: "Temperate",
    exposure: "W",
    watering: 2,
    plant_care: "Prune after flowering to shape and control growth."
  },
  {
    name: "Iris",
    category: "Flowers",
    description: "A plant with sword-shaped leaves and large spectacular flowers.",
    climate: "Temperate",
    exposure: "E",
    watering: 2,
    plant_care: "Divide clumps every 3-4 years to maintain plant health."
  },
  {
    name: "Lavender",
    category: "Flowers",
    description: "An Aromatics plant with narrow gray leaves and fragrant purple flowers.",
    climate: "Warm",
    exposure: "S",
    watering: 1,
    plant_care: "Prune regularly to promote growth."
  },
  {
    name: "Hydrangea",
    category: "Flowers",
    description: "A flowering shrub with large, showy blooms in shades of pink, blue, white, and purple.",
    climate: "Temperate",
    exposure: "W",
    watering: 3,
    plant_care: "Prune in late winter or early spring before new growth appears."
  },
  { ## Azalea
    name: "Azalea",
    category: "Flowers",
    description: "Azaleas are perennial flowering shrubs, bearing flowers from March to June. There are thousands of cultivars to choose from, with flower colours ranging from pinks and purples to reds, oranges and yellows.",
    climate: "Temperate",
    exposure: "W",
    watering: 2,
    plant_care: "These shrubs should be planted in the spring, preferably within cool, lightly shaded sites."
  },
  { ## Geranium
    name: "Geranium",
    category: "Flowers",
    description: "Geraniums (Pelargonium x hortorum) make popular bedding plants in the garden, but they’re also commonly grown indoors or outside in hanging baskets.",
    climate: "Warm",
    exposure: "W",
    watering: 2,
    plant_care: "The best spot for them is in a well-drained garden bed. They also grow well in pots or in hanging baskets."
  },
  { ## Petunia
    name: "Petunia",
    category: "Flowers",
    description: "Petunias are fast-growing plants that will reach full size by late spring They are prolific bloomers, and you can find them in just about every color but true blue.",
    climate: "Warm",
    exposure: "W",
    watering: 2,
    plant_care: "The most important requirement for growing petunias successfully is a location with plenty of light.  Many varieties will thrive even if the soil is not rich and have undemanding requirements for watering."
  }
]
flowers.each do |plant|
  Plant.create!(plant)
end

fruits = [
  {
    name: "Apple",
    category: "Fruits",
    description: "A sweet and crunchy s with red, green, or yellow skin.",
    climate: "Temperate",
    exposure: "S",
    watering: 2,
    plant_care: "Regularly prune to maintain the shape of the tree and water regularly during the growing season."
  },
  {
    name: "Strawberry",
    category: "Fruits",
    description: "A low-growing, perennial plant with white or pink flowers and red, juicy fruit with small seeds on the surface.",
    climate: "Temperate",
    exposure: "S",
    watering: 2,
    plant_care: "Plant in well-draining soil and protect fruit from slugs and birds."
  },
  {
    name: "Raspberry",
    category: "Fruits",
    description: "A perennial plant with thorny canes that produce red, black, or yellow fruit with a hollow core.",
    climate: "Temperate",
    exposure: "S",
    watering: 2,
    plant_care: "Prune canes that have borne fruit and protect fruit from birds and insects."
  },
  {
    name: "Orange",
    category: "Fruits",
    description: "A juicy and sweet fruit with orange skin.",
    climate: "Warm",
    exposure: "S",
    watering: 2,
    plant_care: "Prune in late winter or early spring to promote growth of new shoots and water regularly during the growing season."
  },
  {
    name: "Grape",
    category: "Fruits",
    description: "A sweet and juicy fruit often used for making wine.",
    climate: "Temperate",
    exposure: "S",
    watering: 2,
    plant_care: "Prune in winter to maintain the shape of the vine and water regularly during the growing season."
  },
  {
    name: "Pear",
    category: "Fruits",
    description: "A juicy and sweet fruit with yellow or green skin.",
    climate: "Temperate",
    exposure: "N",
    watering: 2,
    plant_care: "Prune regularly to maintain the shape of the tree and water regularly during the growing season."
  },
  {
    name: "Kiwi",
    category: "Fruits",
    description: "A sweet and tangy fruit with brown fuzzy skin.",
    climate: "Warm",
    exposure: "S",
    watering: 1,
    plant_care: "Prune in winter to maintain the shape of the vine and water regularly during the growing season."
  },
  {
    name: "Peach",
    category: "Fruits",
    description: "A juicy and sweet fruit with velvety skin.",
    climate: "Temperate",
    exposure: "S",
    watering: 2,
    plant_care: "Prune in late winter or early spring to promote the growth of new shoots and water regularly during the growing season."
  },
  { ## Blueberry
    name: "Blueberry",
    category: "Fruits",
    description: "Blueberries are small, round fruit that are blue or purple. They have a sweet fruity flavor.",
    climate: "Temperate",
    exposure: "S",
    watering: 3,
    plant_care: "Blueberry plants need a lot of water, but they also like well-drained, so keep the soil consistently moist but not soggy. Unfortunately, they are not drought-tolerant and will stop producing flowers and fruit if left to dry out."
  },
  { ## Wild strawberry
    name: "Wild strawberry",
    category: "Fruits",
    description: "The lovely five-petalled flowers produce bright red fruits each with some 150 or more seeds on their outer surfaces. Slugs, mice and many other creatures enjoy the fruits and spread the seeds (strictly called achenes).",
    climate: "Temperate",
    exposure: "W",
    watering: 1,
    plant_care: "Before planting wild strawberry plants, loosen the soil in the entire planting area and mix in some compost if necessary."
  }
]

fruits.each do |plant|
  Plant.create!(plant)
end

vegetables = [
  {
    name: "Tomato",
    category: "Vegetables",
    description: "A red, yellow, or green fruit often used as a vegetable.",
    climate: "Temperate",
    exposure: "W",
    watering: 2,
    plant_care: "Stake the plants to keep them upright and water regularly to maintain soil moisture."
  },
  {
    name: "Radish",
    category: "Vegetables",
    description: "A fast-growing, cool-season root vegetable with a crispy texture and a peppery taste.",
    climate: "Temperate",
    exposure: "W",
    watering: 1,
    plant_care: "Plant seeds in succession every few weeks for a continuous harvest."
  },
  {
    name: "Endive",
    category: "Vegetables",
    description: "A leafy vegetable with a slightly bitter taste and crunchy texture, often used in salads or cooked dishes.",
    climate: "Cold",
    exposure: "E",
    watering: 1,
    plant_care: "To produce blanched leaves, cover the plants with a dark cloth or board a few weeks before harvest."
  },
  {
    name: "Carrot",
    category: "Vegetables",
    description: "A sweet root often eaten raw or cooked.",
    climate: "Temperate",
    exposure: "E",
    watering: 1,
    plant_care: "Plant seeds shallowly and water regularly to maintain soil moisture. Thin out the plants to give them space to grow."
  },
  {
    name: "Zucchini",
    category: "Vegetables",
    description: "A long green vegetable often used in cooking.",
    climate: "Warm",
    exposure: "W",
    watering: 1,
    plant_care: "Water regularly to maintain soil moisture and harvest zucchinis before they become too large."
  },
  {
    name: "Cucumber",
    category: "Vegetables",
    description: "A fast-growing vine plant with elongated, green fruit and a mild, refreshing taste.",
    climate: "Warm",
    exposure: "W",
    watering: 2,
    plant_care: "Provide support for the vines to climb and harvest fruit when they are still small for the best taste."
  },
  {
    name: "Green Bean",
    category: "Vegetables",
    description: "A green vegetable often consumed cooked or canned.",
    climate: "Temperate",
    exposure: "W",
    watering: 2,
    plant_care: "Stake the plants to keep them upright and water regularly to maintain soil moisture."
  },
  {## Lettuce
    name: "Lettuce",
    category: "Vegetables",
    description: "This crop is perfect for beginners; it’s easily sown by seed directly in the soil as soon as the ground can be worked.",
    climate: "Temperate",
    exposure: "W",
    watering: 2,
    plant_care: "To extend the lifespan and quality of plants, use shade cloth to keep lettuce cool during warm conditions."
  },
  {## Arugula
    name: "Arugula",
    category: "Vegetables",
    description: "The leaves have a peppery, spicy flavor that grows more bitter with age. Arugula is frequently eaten raw as a salad green but can also be enjoyed cooked in a variety of dishes.",
    climate: "Temperate",
    exposure: "S",
    watering: 2,
    plant_care: "Grow arugula during the cool days of early spring or fall. It grows well in raised beds, containers, and in-ground gardens."
  },
  {## Spinach
    name: "Spinach",
    category: "Vegetables",
    description: "Spinach, Spinacia oleracea, is an annual plant. It grows to a height of up to 30 centimeters. The leaves are alternate, simple, and ovate to triangular, either flat or curled.",
    climate: "Cold",
    exposure: "S",
    watering: 2,
    plant_care: "Water spinach to keep soil constantly moist. Use row covers to maintain cool soil and deter pests."
  },
  {## Bell pepper
    name: "Bell pepper",
    category: "Vegetables",
    description: "Bell pepper plants are short bushes with woody stems that grow brightly colored fruits. Bell pepper may be referred to as red pepper, yellow pepper or green pepper and is believed to have originated in Central and South America.",
    climate: "Warm",
    exposure: "S",
    watering: 2,
    plant_care: "If your climate isn’t ideal for growing peppers, germinating your seeds indoors first is recommended. After one to three weeks of germination, your bell pepper seedlings should have sprouted and are ready for transplanting outside."
  }
]

vegetables.each do |plant|
  Plant.create!(plant)
end
