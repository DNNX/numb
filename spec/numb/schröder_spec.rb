# coding: utf-8
SCHRODER = [1,2,6,22,90,394,1806,8558,41586,206098,1037718,
            5293446,27297738,142078746,745387038,3937603038,
            20927156706,111818026018,600318853926,
            3236724317174,17518619320890,95149655201962,
            518431875418926]

describe Integer, "#schröder" do
  SCHRODER.each_with_index do |s, n|
    it "returns #{s} as the #{n}#{n.ordinal} Schröder number" do
      n.schröder.should == s
    end
  end
end

describe Integer, "#schröder?" do
  SCHRODER.each do |n|
    it "returns true for Schröder number #{n}" do
      n.should be_schröder
    end
  end

  SCHRODER.to_seq.invert.sample(100) do |n|
    it "returns false for non-Schröder number #{n}" do
      n.should_not be_schröder
    end
  end
end
