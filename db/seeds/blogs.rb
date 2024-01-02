puts 'Blogsのseedを投稿します ...'

10.times do
  ramdom_author_id = Author.order("RANDOM()").first.id
  ramdom_exhibition_period_id = ExhibitionPeriod.first.id
  blog = Blog.create(
      title: 'ブログタイトル',
      description: '本文が入ります本文が入ります本文が入ります本文が入ります',
      author_id: ramdom_author_id,
      exhibition_period_id: ramdom_exhibition_period_id,
      )
  puts "blog記事を作成しました。"
end