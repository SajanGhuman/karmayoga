10.times do 
    Product.create(
        product_name: "darr",
        product_desc: "Book by acahrya prasant",
        product_price: 10,
        product_category: "Books",
        product_url: "https://acharyaprashant.org/en/books/book-dar",
        image_url: "ap_darr.jpg"
    )
end