Faker::Config.locale = :ja

puts 'Worksのseedを投稿します ...'

10.times do
  work_title = Faker::Book.unique.title
  work_author = Author.pluck(:id).sample
  work = Work.create(
      title: work_title,
      description: '作品詳細文です',
      material: '写真',
      size: '100cm × 100cm × 50cm',
      weight: '100g',
      images: '本当は写真が入るよ',
      author_id: work_author
      )
  puts "\"#{work.title}\" を作成しました。"
end
