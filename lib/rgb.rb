def to_hex(r, g, b)
  [r, g, b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
    # 繰り返し処理が完了したら、ブロックの戻り値がinjectメソッド自身の戻り値となる
  end
  # hex = '#'
  # [r, g, b].each do |n|
  #   hex += n.to_s(16).rjust(2, '0')
  # end
  # hex
end

def to_ints(hex)
  # hex.scan(/\w\w/).map(&:hex)
  r, g, b = hex[1..2], hex[3..4], hex[5..6]
  [r, g, b].map do |s|
    s.hex
  end
end