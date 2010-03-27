# coding: utf-8
describe Integer, "#smarandache" do
  # A002034
  @seq = [1,2,3,4,5,3,7,4,6,5,11,4,13,7,5,6,17,6,19,5,7,11,
          23,4,10,13,9,7,29,5,31,8,11,17,7,6,37,19,13,5,41,
          7,43,11,6,23,47,6,14,10,17,13,53,9,11,7,19,29,59,
          5,61,31,7,8,13,11,67,17,23,7,71,6,73,37,10,19,11,
          13,79,6,9,41,83,7]

  @seq.to_enum.with_index(1).each do |s, n|
    it "returns #{s} as the value of the Smarandache function for #{n}" do
      n.smarandache.should == s
    end
  end
end
