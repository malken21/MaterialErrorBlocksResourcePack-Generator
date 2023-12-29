require "json"

require "./utils"

# フォルダ名を指定
folder = "block"

# フォルダ内のファイル名の配列を取得
files = Dir.entries(folder)
files = Dir.glob("#{folder}/*.json")

# 配列の要素を処理
files.each do |file|
  main(file)
end
