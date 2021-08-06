class Universe

  # 初期化
  def initialize(d, p)
    @d = d  # シールドが耐えられる総ダメージ数
    ps = p.split(//)  # プログラム文字列を1文字ずつに分割
    @smallest = ps.select { |s| s == 'S' }.size  # S命令の個数
    @shoots = shoots(ps)  # プログラムによるダメージの配列(例[1,2,4])
    @count = 0  # 0で初期化
  end

  # ダメージをD以下にするための、最小のハッキング回数を返す
  def result
    if @d < @smallest  # ダメージがS命令の個数を超える場合、要件を達成不可
      'IMPOSSIBLE'
    else
      while @d < @shoots.reduce(:+).to_i  # ダメージの合計値が、シールドが耐えられる総ダメージ数より大きい間、ハッキングを実行しその回数を増やす
        move!
        @count += 1
      end
      @count
    end
  end

  private

  # 命令(SまたはCの配列)を引数に取り、プログラムによるダメージの配列を返す
  def shoots(ps)
    s = 1  # 1で初期化
    ps.map do |p|
      if p == 'C'  # 命令Cなら、sを2倍にしnilを返す
        s = s * 2
        nil
      else
        s
      end
    end.compact  # nilを取り除いた配列を生成して返す
  end

  # ハッキング(隣接する2つの命令を入れ替えた配列を返す)
  def move!
    @shoots[-1] = @shoots.last / 2  # 配列の最後の値を2で割る
    @shoots.sort!  # 小さい順に並び替えた配列を返す
  end
end

T = gets.to_i
T.times do |t|
  d, p = gets.split(/\s/)  # input(シールドが耐えられる総ダメージ数+プログラムの文字列)を、分割し、それぞれ変数に格納
  puts "Case ##{t.succ}: #{Universe.new(d.to_i, p).result}"  # テストケースの識別番号と、要件を満たす最小のハッキング回数を表示
end