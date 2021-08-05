class Gate
  STATIONS = [:umeda, :juso, :mikuni]
  FARES = [150, 190]

  # 初期化(引数で受け取った名前を使えるように、インスタンス変数に格納)
  def initialize(name)
    @name = name
  end

  def enter(ticket)
    ticket.stamp(@name)
  end

  # 切符の運賃と、必要な運賃を比較し、真偽値を返す
  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end

  # 駅の区間数から、運賃を出す
  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at) # indexメソッドで、配列から引数に合致する要素のインデックスを取得
    to = STATIONS.index(@name)
    distance = to - from
    FARES[distance - 1]
  end
end
