# キーがシンボルなら新しいハッシュに変換する
old_syntax = <<TEXT
{
  :name => 'Alice',
  :age=>20,
  :gender  =>  :female
}
TEXT
convert_hash_stntax(old_syntax)