# 繰り返し処理以外でも使用されるブロック


# sample.txtを開いて文字列を書き込む（クローズ処理は自動的に行われる）
File.open("./sample.txt", "w") do |file|
  file.puts("１行目のテキストです。")
  file.puts("２行目のテキストです。")
  file.puts("３行目のテキストです。")
end
