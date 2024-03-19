

10.times do 
    product_name: "darr",
        product_desc: "Book by acahrya prasant",
    Product.create(
        product_price: 10,
        product_category: "Books",
        product_url: "https://acharyaprashant.org/en/books/book-dar",
        image_url: "ap_darr.jpg",
        category_id: 
    )
end

ProductCategory.create(
    category_name: "YT Channels",
    category_desc: "Youtube Category"
)


ProductCategory.create(
    category_name: "Podcasts",
    category_desc: "Podcasts Category"
)

ProductCategory.create(
    category_name: "Donations",
    category_desc: "Donations Category"
)