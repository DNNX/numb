# coding: utf-8
describe Integer, "σ" do

  @seq = {
    # A000005 
    0 => [1,2,2,3,2,4,2,4,3,4,2,6,2,4,4,5,2,6,2,6,4,4,2,8,
          3,4,4,6,2,8,2,6,4,4,4,9,2,4,4,8,2,8,2,6,6,4,2,10,
          3,6,4,6,2,8,4,8,4,4,2,12,2,4,6,7,4,8,2,6,4,8,2,12,
          2,4,6,6,4,8,2,10,5,4,2,12,4,4,4,8,2,12,4,6,4,4,4,
          12,2,6,6,9,2,8,2,8],
    # A000203      
    1 => [1,3,4,7,6,12,8,15,13,18,12,28,14,24,24,31,18,39,
          20,42,32,36,24,60,31,42,40,56,30,72,32,63,48,54,
          48,91,38,60,56,90,42,96,44,84,78,72,48,124,57,93,
          72,98,54,120,72,120,80,90,60,168,62,96,104,127,84,
          144,68,126,96,144],
    # A001157      
    2 => [1,5,10,21,26,50,50,85,91,130,122,210,170,250,260,
          341,290,455,362,546,500,610,530,850,651,850,820,
          1050,842,1300,962,1365,1220,1450,1300,1911,1370,
          1810,1700,2210,1682,2500,1850,2562,2366,2650,2210,
          3410,2451,3255],
    # A001158       
    3 => [1,9,28,73,126,252,344,585,757,1134,1332,2044,
          2198,3096,3528,4681,4914,6813,6860,9198,9632,
          11988,12168,16380,15751,19782,20440,25112,24390,
          31752,29792,37449,37296,44226,43344,55261,50654,
          61740,61544],
  }

  @seq.each do |k, values|
    values.to_enum.with_index(1).each do |m, n|
      it "returns #{m} for σ#{k}(#{n})" do
        n.σ(k).should == m
      end
    end
  end

  @seq[1].to_enum.with_index(1).each do |m, n|
    it "returns #{m} for σ(#{n})" do
      n.σ.should == m
    end
  end
end
