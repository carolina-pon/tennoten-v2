# db/seed配下のファイルを全て実行する
Dir[File.expand_path('./db/seeds' << '/*.rb')].each do |file|
  require file
end