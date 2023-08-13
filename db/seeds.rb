# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Food.create(
  [
    {
      name: 'Pizza',
      image_url: 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=481&q=80',
      stock_quantity: 20,
      price: 699,
      category: 1
    },
    {
      name: 'Chocolate',
      image_url: 'https://images.unsplash.com/photo-1606312619070-d48b4c652a52?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
      stock_quantity: 20,
      price: 200,
      category: 2
    },
    {
      name: 'Cake',
      image_url: 'https://images.unsplash.com/photo-1571115177098-24ec42ed204d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
      stock_quantity: 20,
      price: 799,
      category: 2
    },
    {
      name: 'Spring Roll',
      image_url: 'https://images.unsplash.com/photo-1606525437679-037aca74a3e9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80',
      stock_quantity: 20,
      price: 50,
      category: 0
    },
    {
      name: 'Chicken Curry',
      image_url: 'https://images.unsplash.com/photo-1604908176997-125f25cc6f3d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=713&q=80',
      stock_quantity: 20,
      price: 750,
      category: 1
    },
    {
      name: 'Beef Curry',
      image_url: 'https://images.unsplash.com/photo-1604908177453-7462950a6a3b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=757&q=80',
      stock_quantity: 20,
      price: 999,
      category: 1
    },
    {
      name: 'Salad',
      image_url: 'https://plus.unsplash.com/premium_photo-1673590981774-d9f534e0c617?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
      stock_quantity: 20,
      price: 180,
      category: 0
    },
    {
      name: 'Brownie',
      image_url: 'https://images.unsplash.com/photo-1605190557072-1fe6a230ee65?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=389&q=80',
      stock_quantity: 20,
      price: 599,
      category: 2
    },
    {
      name: 'Pasta',
      image_url: 'https://images.unsplash.com/photo-1608897013039-887f21d8c804?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=392&q=80',
      stock_quantity: 20,
      price: 199,
      category: 0
    },
    {
      name: 'Spaghetti',
      image_url: 'https://images.unsplash.com/photo-1598866594230-a7c12756260f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=708&q=80',
      stock_quantity: 20,
      price: 249,
      category: 0
    },
    {
      name: 'Rice',
      image_url: 'https://images.unsplash.com/photo-1596560548464-f010549b84d7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8cmljZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
      stock_quantity: 20,
      price: 199,
      category: 2
    },
    {
      name: 'Bread',
      image_url: 'https://images.unsplash.com/photo-1608198093002-ad4e005484ec?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1032&q=80',
      stock_quantity: 20,
      price: 99,
      category: 2
    }
  ]
)
