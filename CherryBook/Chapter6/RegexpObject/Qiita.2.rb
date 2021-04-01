# Qiita記事　初心者歓迎！手と目で覚える正規表現入門・その２「微妙な違いを許容しつつ置換しよう」


text = <<-TEXT
クープバゲットのパンは美味しかった。
今日はクープ バゲットさんに行きました。
クープ　バゲットのパンは最高。
ジャムおじさんのパン、ジャムが入ってた。
また行きたいです。クープ・バゲット。
クープ・バケットのパン、売り切れだった（><）
TEXT
p text.split(/\n/).grep(/クープ?.バ[ゲケ]ット/)


chikan = <<-TEXT
<select name="game_console">
<option value="wii_u">Wii U</option>
<option value="ps4">プレステ4</option>
<option value="gb">ゲームボーイ</option>
</select>
TEXT

# p chikan.sub(/<option value="([a-z0-9_]+)">(.+)<\/option>/,$1,$2)