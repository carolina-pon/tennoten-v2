puts 'exhibition_periodsのseedを投稿します ...'

exhibition_periods = [
  { date: '2023kyoto'},
  { date: '2023hiroshima'},
]

exhibition_periods.each do |exhibition_period|
  ExhibitionPeriod.create!(exhibition_period)
end

puts 'exhibition_periodsのseedを投稿しました'