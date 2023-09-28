require_relative "setup"
class UNIXName::READMETest < Test::Unit::TestCase
  include Test::Cmd

  def test_number_of_stdout_lines
    assert_equal 6, lines.to_a.size
  end

  def test_no_empty_lines
    assert_equal false, lines.map(&:strip).any?(&:empty?)
  end

  private

  def lines
    cmd("ruby share/uname.rb/1_example.rb").stdout.each_line
  end
end
