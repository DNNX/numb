# coding: utf-8
describe Integer, "#pandigital?" do
  # A050278  
  @seq = [1023456789,1023456798,1023456879,1023456897,
          1023456978,1023456987,1023457689,1023457698,
          1023457869,1023457896,1023457968,1023457986,
          1023458679,1023458697,1023458769,1023458796,
          1023458967,1023458976] 
  @seq.each do |n|
    it "returns true for pandigital number #{n}" do
      n.should be_pandigital
    end
  end
  
  # A050289
  [123456789,123456798,123456879,123456897,123456978,123456987,123457689,
   123457698,123457869,123457896,123457968,123457986,123458679,123458697,
   123458769,123458796,123458967,123458976].each do |n|
    it "returns false for zeroless pandigital number #{n}" do
      n.should_not be_pandigital
    end
  end

  [19, 123456780, 987653211, 474839302029273675, 100000001, 34, 334455].each do |n|
    it "returns false for non-pandigital number #{n}" do
      n.should_not be_pandigital
    end
  end
end
