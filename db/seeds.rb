puts 'Cleaning database...'
Order.destroy_all
Teddy.destroy_all
Category.destroy_all

puts 'Creating categories...'
geek = Category.create!(name: 'geek')
kids = Category.create!(name: 'kids')

puts 'Creating teddies...'
Teddy.create!(sku: 'original-teddy-bear', price: 10, name: 'Teddy bear', category: kids, photo_url: 'http://onehdwallpaper.com/wp-content/uploads/2015/07/Teddy-Bears-HD-Images.jpg')

Teddy.create!(sku: 'jean-mimi', price_cents: 1050, name: 'Jean-Michel - Le Wagon', category: geek, photo_url: 'https://pbs.twimg.com/media/B_AUcKeU4AE6ZcG.jpg:large')
Teddy.create!(sku: 'octocat',  price: 10, name: 'Octocat -  GitHub',      category: geek, photo_url: 'https://cdn-ak.f.st-hatena.com/images/fotolife/s/suzumidokoro/20160413/20160413220730.jpg')
puts 'Finished!'
