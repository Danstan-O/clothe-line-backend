# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Seeding data'
#Creation of Buyers seed data
buyer1 = Buyer.create(username: "Jonah Bill", email: "Bill@gmail.com", password: "dan")
buyer2 = Buyer.create(username: "Great Noel", email: "Biggy@gmail.com", password: "dan")
buyer3 = Buyer.create(username: "Bridgit",  email: "Bridgit@gmail.com", password: "dan")

#Creation of Merchant seed data
merch1 = Merchant.create(name: "Jonah Bill", profile: "Bill One the proficient", email: "Bill@gmail.com", password: "1234")
merch2 = Merchant.create(name: "Great Noel", profile: "Biggy Goffer all the way down", email: "Biggy@gmail.com", password: "1234")
merch3 = Merchant.create(name: "Bridgit", profile: " Master Clan the sundowner", email: "Master@gmail.com", password: "1234")

#Creation of Merchandize seed data
gudis1 = Merchandize.create(name: "Unisex-demin-jacket", category: "Unisex", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396461/farm%20apps/the-clothe-line/Unisex-demin-jacket_ry2mbi.png", merchant_id: merch1.id, price: 165)
gudis2 = Merchandize.create(name: "brown beatiful dress", category: "Women", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670403650/farm%20apps/the-clothe-line/istockphoto-1415133974-170667a_scffdp.jpg", merchant_id: merch1.id, price: 165)
gudis3 = Merchandize.create(name: "summer-jacket", category: "Men", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396459/farm%20apps/the-clothe-line/summer-jacket_phqc8k.png", merchant_id: merch2.id, price: 125)

gudis5 = Merchandize.create(name: "yellow-red-carpet-dress", category: "Women", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396457/farm%20apps/the-clothe-line/yellow-red-carpet-dress_qhrduf.png", merchant_id: merch1.id, price: 785)
gudis6 = Merchandize.create(name: "Tomboy-canvas-shoes", category: "Men", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396448/farm%20apps/the-clothe-line/Tomboy-canvas-shoes_fuukyx.png", merchant_id: merch3.id, price: 785)
gudis7 = Merchandize.create(name: "unisex-office-wear", category: "Unisex", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396454/farm%20apps/the-clothe-line/unisex-office-wear_yrrsv4.png", merchant_id: merch2.id, price: 785)
gudis8 = Merchandize.create(name: "men-varsace-jacket", category: "Men", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396446/farm%20apps/the-clothe-line/men-varsace-jacket_rpr8jg.png", merchant_id: merch2.id, price: 785)
gudis9 = Merchandize.create(name: "white-and-brown-ladies-canvas-shoes", category: "Women", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396443/farm%20apps/the-clothe-line/white-and-brown-ladies-canvas-shoes_zx0hpz.png", merchant_id: merch3.id, price: 785)
gudis10 = Merchandize.create(name: "unisex-2-coloured-jumper", category: "Unisex", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396437/farm%20apps/the-clothe-line/unisex-2-coloured-jumper_gmthcp.png", merchant_id: merch3.id, price: 785)
gudis12 = Merchandize.create(name: "Nike-party-shoes", category: "Men", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396427/farm%20apps/the-clothe-line/Nike-party-shoes_gxador.png", merchant_id: merch1.id, price: 785)

gudis13 = Merchandize.create(name: "red-golden-handbag", category: "Women", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396433/farm%20apps/the-clothe-line/red-golden-handbag_ptd8wf.png", merchant_id: merch3.id, price: 785)
gudis14 = Merchandize.create(name: "Mjengo-boots", category: "Men", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396436/farm%20apps/the-clothe-line/Mjengo-boots_tnh9tb.png", merchant_id: merch1.id, price: 785)

gudis15 = Merchandize.create(name: "Men_s-kutesa-shoes", category: "Men", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396427/farm%20apps/the-clothe-line/Men_s-kutesa-shoes_bnavky.png", merchant_id: merch2.id, price: 785)
gudis16 = Merchandize.create(name: "", category: "Women", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396425/farm%20apps/the-clothe-line/men-vital-classic-shoes_iqajgj.png", merchant_id: merch3.id, price: 785)
gudis17 = Merchandize.create(name: "men-dark-blue-jacket", category: "Men", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396424/farm%20apps/the-clothe-line/men-dark-blue-jacket_l1g9gq.png", merchant_id: merch1.id, price: 785)
gudis18 = Merchandize.create(name: "mens-watch", category: "Men", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396421/farm%20apps/the-clothe-line/mens-watch_f2x5eg.png", merchant_id: merch3.id, price: 785)
gudis = Merchandize.create(name: "Men-kakhi-trouser", category: "Men", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396421/farm%20apps/the-clothe-line/Men-kakhi-trouser_hse7j8.png", merchant_id: merch1.id, price: 785)
gudis19 = Merchandize.create(name: "Men-trouser-jeans", category: "Men", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396413/farm%20apps/the-clothe-line/Men-trouser-jeans_cmzvad.png", merchant_id: merch1.id, price: 785)
gudis20 = Merchandize.create(name: "men-multi-coloured-shoes", category: "Men", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396412/farm%20apps/the-clothe-line/men-multi-coloured-shoes_qwcttn.png", merchant_id: merch1.id, price: 785)
gudis21 = Merchandize.create(name: "Men_s-flexible-underwear", category: "Men", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396409/farm%20apps/the-clothe-line/Men_s-flexible-underwear_n1jimx.png", merchant_id: merch2.id, price: 785)
gudis22 = Merchandize.create(name: "men-red-abd-black-shoes", category: "Men", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396407/farm%20apps/the-clothe-line/men-red-abd-black-shoes_xnjg4y.png", merchant_id: merch3.id, price: 785)
gudis23 = Merchandize.create(name: "Ladies-highheels", category: "Women", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396398/farm%20apps/the-clothe-line/Ladies-highheels_n22034.png", merchant_id: merch3.id, price: 785)
gudis24 = Merchandize.create(name: "Ladies-summer-beachwear", category: "Women", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396397/farm%20apps/the-clothe-line/Ladies-summer-beachwear_fgxahn.png", merchant_id: merch3.id, price: 785)
gudis25 = Merchandize.create(name: "ladies-trendy-court", category: "Women", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396395/farm%20apps/the-clothe-line/ladies-trendy-court_v74pvd.png", merchant_id: merch3.id, price: 785)
gudis26 = Merchandize.create(name: "Men-canvas-shoes", category: "Men", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396397/farm%20apps/the-clothe-line/Men-canvas-shoes_jqv8tj.png", merchant_id: merch3.id, price: 785)
gudis27 = Merchandize.create(name: "men-brown-kakhi-trouser", category: "Men", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396390/farm%20apps/the-clothe-line/men-brown-kakhi-trouser_kfqfk0.png", merchant_id: merch2.id, price: 785)
gudis28 = Merchandize.create(name: "ladies-small-red-handbag", category: "Women", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396383/farm%20apps/the-clothe-line/ladies-small-red-handbag_dqj8ka.png", merchant_id: merch2.id, price: 785)
gudis29 = Merchandize.create(name: "ladies-sexy-handbag", category: "Women", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396375/farm%20apps/the-clothe-line/ladies-sexy-handbag_flf4tu.png", merchant_id: merch1.id, price: 785)
gudis30 = Merchandize.create(name: "Ladies-red-handbag", category: "Women", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396376/farm%20apps/the-clothe-line/Ladies-red-handbag_wbvgfz.png", merchant_id: merch1.id, price: 785)
gudis31 = Merchandize.create(name: "ladies-multi-colored-parse", category: "Women", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396377/farm%20apps/the-clothe-line/ladies-multi-colored-parse_q947ms.png", merchant_id: merch3.id, price: 785)
gudis32 = Merchandize.create(name: "Ladies-office-handbag", category: "Women", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396375/farm%20apps/the-clothe-line/Ladies-office-handbag_st75rt.png", merchant_id: merch3.id, price: 785)
gudis33 = Merchandize.create(name: "Ladies-pink-handbag", category: "Women", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396372/farm%20apps/the-clothe-line/Ladies-pink-handbag_e2leuw.png", merchant_id: merch3.id, price: 785)
gudis34 = Merchandize.create(name: "ladies-faded-blue-demin-trouser", category: "Women", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396371/farm%20apps/the-clothe-line/ladies-faded-blue-demin-trouser_jnzhrn.png", merchant_id: merch3.id, price: 785)
gudis35 = Merchandize.create(name: "ladies-light-red-handbag", category: "Women", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396370/farm%20apps/the-clothe-line/ladies-light-red-handbag_bercgi.png", merchant_id: merch3.id, price: 785)
gudis36 = Merchandize.create(name: "Kids-bad-luku", category: "Kids", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396365/farm%20apps/the-clothe-line/Kids-bad-luku_tmb8dk.png", merchant_id: merch1.id, price: 785)
gudis37 = Merchandize.create(name: "ladies-comfortable-lingerie", category: "Women", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396366/farm%20apps/the-clothe-line/ladies-comfortable-lingerie_jbt7lz.png", merchant_id: merch1.id, price: 785)
gudis38 = Merchandize.create(name: "ladies-highwaist-jeans", category: "Women", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396364/farm%20apps/the-clothe-line/ladies-highwaist-jeans_nlpuqi.png", merchant_id: merch3.id, price: 785)
gudis39 = Merchandize.create(name: "ladies-handbag-collection", category: "Women", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396361/farm%20apps/the-clothe-line/ladies-handbag-collection_nooslf.png", merchant_id: merch3.id, price: 785)
gudis40 = Merchandize.create(name: "Ladies-black-handbag", category: "Women", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396361/farm%20apps/the-clothe-line/Ladies-black-handbag_yxu0yu.png", merchant_id: merch2.id, price: 785)
gudis41 = Merchandize.create(name: "Ladies-best-bikini-wear", category: "Women", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396356/farm%20apps/the-clothe-line/Ladies-best-bikini-wear_pvxu5g.png", merchant_id: merch2.id, price: 785)
gudis42 = Merchandize.create(name: "Jungle-Navy-pants", category: "Men", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396348/farm%20apps/the-clothe-line/Jungle-Navy-pants_lpoe4i.png", merchant_id: merch3.id, price: 785)
gudis43 = Merchandize.create(name: "ladies-baggy-t-shirt", category: "Women", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396347/farm%20apps/the-clothe-line/ladies-baggy-t-shirt_crwnro.png", merchant_id: merch1.id, price: 785)
gudis44 = Merchandize.create(name: "great-unisex-shoes", category: "Unisex", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396342/farm%20apps/the-clothe-line/great-unisex-shoes_hsqes6.png", merchant_id: merch1.id, price: 785)
gudis45 = Merchandize.create(name: "Kids-winter-jacket", category: "Kids", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396344/farm%20apps/the-clothe-line/Kids-winter-jacket_jx1zcu.png", merchant_id: merch1.id, price: 785)
gudis46 = Merchandize.create(name: "african-kiondo-print", category: "Women", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396339/farm%20apps/the-clothe-line/african-kiondo-print_ndjdld.png", merchant_id: merch2.id, price: 785)
gudis47 = Merchandize.create(name: "brown-black-unisex-jacket", category: "Unisex", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396335/farm%20apps/the-clothe-line/brown-black-unisex-jacket_ooitxm.png", merchant_id: merch3.id, price: 785)
gudis48 = Merchandize.create(name: "Boys-demin-jacket", category: "Men", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396334/farm%20apps/the-clothe-line/Boys-demin-jacket_mn9k2j.png", merchant_id: merch2.id, price: 785)
gudis49 = Merchandize.create(name: "fashionless-shoes", category: "Women", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396331/farm%20apps/the-clothe-line/fashionless-shoes_jo8b5g.png", merchant_id: merch3.id, price: 785)
gudis50 = Merchandize.create(name: "Boy_s-tomboy-pants", category: "Men", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396313/farm%20apps/the-clothe-line/Boy_s-tomboy-pants_l8q6nz.png", merchant_id: merch3.id, price: 785)
gudis51 = Merchandize.create(name: "Blue-men-winter-jacket", category: "Men", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396330/farm%20apps/the-clothe-line/Blue-men-winter-jacket_oxqaxh.png", merchant_id: merch1.id, price: 788)
gudis53 = Merchandize.create(name: "blue-kids-winter-jacket", category: "Kids", image_url: "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396312/farm%20apps/the-clothe-line/blue-kids-winter-jacket_bqcxmg.png", merchant_id: merch2.id, price: 785)




# seeding reviews
review1 = Review.create(comments: "one of the best products in the market", likes: 0, merchandize_id: gudis1.id, buyer_id: buyer2.id)
review2 = Review.create(comments: "i will definately come back for more products", likes: 0, merchandize_id: gudis2.id, buyer_id: buyer1.id)
review3 = Review.create(comments: "you are on fire broh, kudos for the great performance", likes: 0, merchandize_id: gudis3.id, buyer_id: buyer3.id)
review4 = Review.create(comments: "the product broke down on the second day of use", likes: 0, merchandize_id: gudis2.id, buyer_id: buyer2.id)

puts 'Done!'