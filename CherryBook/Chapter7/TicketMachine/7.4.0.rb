# 改札機プログラムの実行例


# 改札機オブジェクトの作成
umeda = Gate.new(:umeda)
mikuni = gate.new(:mikuni)

# 150円の切符を購入して梅田で入場し、三国で降車する（NG）
ticket = Ticket.new(150)
umeda.enter(ticket)
mikuni.exit(ticket)

# 190円の切符を購入して梅田で乗車し、三国で降車する
ticket = Ticket.new(190)
umeda.enter(ticket)
mikuni.exit(ticket)