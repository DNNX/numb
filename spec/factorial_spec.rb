describe Integer, "#factorial" do
  # A000142
  @seq = [1,1,2,6,24,120,720,5040,40320,362880,3628800,
          39916800,479001600,6227020800,87178291200,
          1307674368000,20922789888000,355687428096000,
          6402373705728000,121645100408832000,
          2432902008176640000]

  @seq.each_with_index do |factorial, n|
    it "should return #{factorial} for #{n}!" do
      n.factorial.should == factorial
    end
  end
end
