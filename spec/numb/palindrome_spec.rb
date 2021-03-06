# coding: utf-8
describe Integer, "#palindrome?" do
  @seq = {
    # A057148
    2 => [0,1,0b11,0b101,0b111,0b1001,0b1111,0b10001,0b10101,0b11011,0b11111,
          0b100001,0b101101,0b110011,0b111111,0b1000001,0b1001001,
          0b1010101,0b1011101,0b1100011,0b1101011,0b1110111,0b1111111,
          0b10000001,0b10011001,0b10100101,0b10111101,0b11000011,
          0b11011011],
    # A014190      
    3 => [0,1,2,4,8,10,13,16,20,23,26,28,40,52,56,68,80,82,
          91,100,112,121,130,142,151,160,164,173,182,194,
          203,212,224,233,242,244,280,316,328,364,400,412,
          448,484,488,524,560,572,608,644,656,692,728,730,
          757,784,820,847,874,910],
    # A014192 
    4 => [0,1,2,3,5,10,15,17,21,25,29,34,38,42,46,51,55,59,
          63,65,85,105,125,130,150,170,190,195,215,235,255,
          257,273,289,305,325,341,357,373,393,409,425,441,
          461,477,493,509,514,530,546,562,582,598,614,630,
          650,666,682,698,718,734],
    # A002113
    10 => [0,1,2,3,4,5,6,7,8,9,11,22,33,44,55,66,77,88,99,
           101,111,121,131,141,151,161,171,181,191,202,212,
           222,232,242,252,262,272,282,292,303,313,323,333,
           343,353,363,373,383,393,404,414,424,434,444,454,
           464,474,484,494,505,515]
  }

  @seq.each do |base, ns|
    ns.each do |n|
      it "returns true for base-#{base} palindrome #{n}" do
        n.should be_palindrome(base)
      end
    end

    ns.to_seq.invert.sample(10).each do |n|
      it "returns false for non-base-#{base} palindrome #{n}" do
        n.should_not be_palindrome(base)
      end
    end
  end
end
