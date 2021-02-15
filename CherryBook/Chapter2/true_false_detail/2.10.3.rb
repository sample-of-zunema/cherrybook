# u less文

status = 'error'
if status != 'ok'
	'何か異常があります'
end

status = 'error'
unless status == 'ok'
	'何か異常があります!'
end

status = 'ok'
unless status == 'ok'
	'何か異常があります'
else
	'正常です'
end


status = 'error'
# unlessの結果を変数に代入する
message =
unless status == 'ok'
	'何か異常があります'
else
	'正常です'
end
puts message

# unlessを修飾子として使う
'何か異常があります!!' unless status == 'ok'

status = 'error'
unless status == 'ok' then
	'何か異常があります'
end
