def to_hex(r, g, b)
  [r, g, b].inject('#') do |hex, n|の戻り値になる
    hex + n.to_s(16).rjust(2, '0')
    # 繰り返し処理が完了したら、ブロックの戻り値がinjectメソッド自身の戻り値となる
  end
  # hex = '#'
  # [r, g, b].each do |n|
  #   hex += n.to_s(16).rjust(2, '0')
  # end
  # hex
end