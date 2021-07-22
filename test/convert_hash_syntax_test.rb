require 'minitest/autorun'
require './lib/convert_hash_syntax'

class ConvertHashSyntaxTest < Minitest::Test
  def test_convert_hash_syntax
    old_syntax = <<~TEXT
      {
        :name => 'Alice',
        :age=>20,
        :gender  =>  :female
      }
    TEXT
    expected = <<~TEXT
      {
        name: 'Alice',
        age: 20,
        gender: :female
      }
    TEXT
    assert_equal expected, convert_hash_syntax(old_syntax)
    # メソッドの戻り値を標準出力で確認
    # actual = convert_hash_syntax(old_syntax)
    # puts actual
    # assert_equal expected, actual
  end
end