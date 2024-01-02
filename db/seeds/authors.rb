Faker::Config.locale = :ja

puts 'Authorsのseedを投稿します ...'

10.times do
  author_name = Faker::Name.unique.name
  author_site = Faker::Address.unique.city
  author = Author.create(
      name: author_name,
      site: author_site,
      sns: 'https://example.com'
      )
  puts "\"#{author.name}\" を作成しました。"
end