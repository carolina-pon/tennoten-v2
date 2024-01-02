Faker::Config.locale = :ja

puts 'Categoriesのseedを投稿します ...'

10.times do
  category_name = Faker::Book.unique.genre
  category = Category.create(
      name: category_name
      )
  puts "\"#{category.name}\" を作成しました。"
end
