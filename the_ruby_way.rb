class TheRubyWay

  str = "Once upon\na time...\nThe End\n"
  num = 0
  str.each_line do |line|
    num += 1
    print "Line #{num}: #{line}"
  end



end

TRW = TheRubyWay.new