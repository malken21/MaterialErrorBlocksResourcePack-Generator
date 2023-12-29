require "json"

# JSON 読み込み
def loadJSON(filePath)
  File.open(filePath) do |file|
    return JSON.load(file)
  end
end

# JSON 書き込み
def saveJSON(filePath, obj)
  # JSONデータを整形する
  pretty_data = JSON.pretty_generate(obj)
  # 整形したJSONデータを別のファイルに保存する
  File.open(filePath, "w") do |file|
    file.write(pretty_data)
  end
end

# オブジェクトのテクスチャの参照先 書き換え
def changeTextures(obj, tex_path)
  tex_obj = obj["textures"]
  if (!tex_obj)
    return false
  end
  obj["textures"] = tex_obj.each { |key, value| tex_obj[key] = tex_path }
  return true
end
