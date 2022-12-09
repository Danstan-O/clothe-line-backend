# README


# creating a new application

I ran a `rails new clothline` to create a new application that i will use foe the 
project

# Generating resources

I ran a `rails g resource Merchant name profile email password_digest` to generate
a resource for my merchants.

I then ran a `rails g resource Merchandize name category image_url price merchant:belongs_to` to generate a resource for my merchandizes.

I also ran a `rails g resource Buyer username email password_digest` to generate a resource for my buyers.

I finally ran a `rails g resource Review comments likes merchandize:belongs_to buyer:belongs_to` to generate a resource for my merchants.

# Models

I then created the following relationships:
-A `Merchant` has many `Merchandizes`

- A `Merchandize` belongs to a  `Merchant`

- A `Merchandize` has many  `Reviews`

- A `Buyer` has many  `Reviews`

- A `Merchandizes` has many `Buyer` through  `Reviews`

- A `Buyer` has many `Merchandizes` through  `Reviews`

- A `Merchandize` belongs to a  `Merchant`


After that I did the migrations for the database tables that I had created.

# Seeding
I then created the seeds and seeded them to generate data that I was going to use and see if my application was working as expected.

# Validations
I added the following validation to the `Buyer` model:

-A `username`, `password` and `email` were to be present. 

I also added the validation for `Merchandize` where:

- `category` was to be one of the following values 'Men', 'Women', 'Kids', 'Unisex' 

I then added the following validation to the `Merchandize` model:

-A `name`, `password` and `email` were to be present.

- The `email` was also supposed to be unique.



# Routes
I set up the following routes and made sure that they return

 JSON data in the format below along with their 
 
 appropriate HTTP verb.

GET /merchandizes

 It was to return JSON data in the format below:

{
    "id": 1,
    "name": "Unisex-demin-jacket",
    "category": "Unisex",
    "image_url": "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396461/farm%20apps/the-clothe-line/Unisex-demin-jacket_ry2mbi.png",
    "merchant_id": 1,
    "price": 165
  },
  {
    "id": 2,
    "name": "brown beatiful dress",
    "category": "Women",
    "image_url": "https://res.cloudinary.com/dghmulj4i/image/upload/v1670403650/farm%20apps/the-clothe-line/istockphoto-1415133974-170667a_scffdp.jpg",
    "merchant_id": 1,
    "price": 165
  },
  {
    "id": 3,
    "name": "summer-jacket",
    "category": "Men",
    "image_url": "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396459/farm%20apps/the-clothe-line/summer-jacket_phqc8k.png",
    "merchant_id": 2,
    "price": 125
  }
  ]
 

GET /merchandizes/:id

If the `Hero` exists in our database, the JSON data was to be returned in the format below:

 

{
  "id": 1,
  "name": "Unisex-demin-jacket",
  "category": "Unisex",
  "image_url": "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396461/farm%20apps/the-clothe-line/Unisex-demin-jacket_ry2mbi.png",
  "merchant_id": 1,
  "price": 165
}


 GET /merchants

 It was to display the merchants and different merchandizes sold by that merchant


  {
    "id": 1,
    "name": "Jonah Bill",
    "profile": "Bill One the proficient",
    "email": "Bill@gmail.com",
    "password_digest": "$2a$12$AhqfF/aeZHvnCisARNqk0u.YHFuiFn7Gu9ANnhbbS0Rnwf79jqrpe",
    "merchandizes": [
      {
        "id": 1,
        "name": "Unisex-demin-jacket",
        "image_url": "https://res.cloudinary.com/dghmulj4i/image/upload/v1670396461/farm%20apps/the-clothe-line/Unisex-demin-jacket_ry2mbi.png",
        "category": "Unisex",
        "price": 165,
        "merchant_id": 1,
        "created_at": "2022-12-08T12:06:11.000Z",
        "updated_at": "2022-12-08T12:06:11.000Z"
      },
      {
        "id": 2,
        "name": "brown beatiful dress",
        "image_url": "https://res.cloudinary.com/dghmulj4i/image/upload/v1670403650/farm%20apps/the-clothe-line/istockphoto-1415133974-170667a_scffdp.jpg",
        "category": "Women",
        "price": 165,
        "merchant_id": 1,
        "created_at": "2022-12-08T12:06:11.007Z",
        "updated_at": "2022-12-08T12:06:11.007Z"
      }


 GET /merchants/:id

If someone was to try and get only one merrchant before logging in it was to throw an error:

```

{ 
  "error": "Not authorized"
}

```

