require "./utils"

# フォルダ名を指定
folder = "block"

TexturePath = "minecraft:block/mat_error"
ResultDir = "result"

def main(file, tex_path, result_dir)
  puts file
  obj = loadJSON(file)
  if (changeTextures(obj, tex_path))
    save_path = result_dir + "/" + File.basename(file)
    saveJSON(save_path, obj)
  end
end

# フォルダ内のファイル名の配列を取得
files = Dir.entries(folder)
files = Dir.glob("#{folder}/*.json")

if (!Dir.exist?(ResultDir))
  Dir.mkdir(ResultDir)
end

# 配列の要素を処理
files.each do |file|
  main(file, TexturePath, ResultDir)
end
