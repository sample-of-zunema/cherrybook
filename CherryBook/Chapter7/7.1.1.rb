# この章の例題：改札機プログラム


# 改札機オブジェクトの作成
umeda = Gate.new(:umeda)
mikuni = Gate.new(:mikuni)

# 150円の切符を購入して梅田で乗車し、三国で降車する（NG）
ticket = Ticket.new(150)
umeda.enter(ticket)
mikuni.exit(ticket)

# 190円の切符を購入して乗車し、三国で降車する（OK）
ticket = Ticket.new(190)
umeda.enter(ticket)
mikuni.exit(ticket)