describe Integer, "#abundancy" do
         # A017665
  @seq = [1,3,4,7,6,2,8,15,13,9,12,7,14,12,8,31,18,13,20,
          21,32,18,24,5,31,21,40,2,30,12,32,63,16,27,48,91,
          38,30,56,9,42,16,44,21,26,36,48,31,57,93,24,49,54,
          20,72,15,80,45,60,14,62,48,104,127,84,24,68,63,32,
          72,72,65,74,57].zip(    
         # A017666
         [1,2,3,4,5,1,7,8,9,5,11,3,13,7,5,16,17,6,19,10,21,
          11,23,2,25,13,27,1,29,5,31,32,11,17,35,36,37,19,
          39,4,41,7,43,11,15,23,47,12,49,50,17,26,53,9,55,7,
          57,29,59,5,61,31,63,64,65,11,67,34,23,35,71,24,73,
          37,75,19]).map{|n,d| Rational(n,d)}.to_seq

  @seq.each_with_index do |e, i|
    it "should return #{e.inspect} for #{i.succ}" do
      i.succ.abundancy.should == e
    end
  end
end
