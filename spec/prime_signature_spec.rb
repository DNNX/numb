describe Integer, "#prime_signature" do
  SIGNATURES = {
    # A000040
    [1]     =>  [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,
                 61,67,71,73,79,83,89,97,101,103,107,109,113,127,
                 131,137,139,149,151,157,163,167,173,179,181,191,
                 193,197,199,211,223,227,229,233,239,241,251,257,
                 263,269,271],
    # A001248
    [2]     =>  [4,9,25,49,121,169,289,361,529,841,961,1369,1681,
                 1849,2209,2809,3481,3721,4489,5041,5329,6241,6889,
                 7921,9409,10201,10609,11449,11881,12769,16129,
                 17161,18769,19321,22201],
    # A006881        
    [1,1]   =>  [6,10,14,15,21,22,26,33,34,35,38,39,46,51,55,57,
                 58,62,65,69,74,77,82,85,86,87,91,93,94,95,106,111,
                 115,118,119,122,123,129,133,134,141,142,143,145,
                 146,155,158,159,161,166,177,178,183,185,187,194,
                 201,202,203,205],
    # A030078
    [3]     =>  [8,27,125,343,1331,2197,4913,6859,12167,24389,
                 29791,50653,68921,79507,103823,148877,205379,
                 226981,300763,357911,389017,493039,571787,704969,
                 912673,1030301,1092727,1225043,1295029,1442897],
    # A054753
    [2,1]   =>  [12,18,20,28,44,45,50,52,63,68,75,76,92,98,99,116,
                 117,124,147,148,153,164,171,172,175,188,207,212,
                 236,242,244,245,261,268,275,279,284,292,316,325,
                 332,333,338,356,363,369,387,388,404,412,423,425,
                 428,436,452],
    # A030514
    [4]     =>  [16,81,625,2401,14641,28561,83521,130321,279841,
                 707281,923521,1874161,2825761,3418801,4879681,
                 7890481,12117361,13845841,20151121,25411681,
                 28398241,38950081,47458321,62742241,88529281,
                 104060401],
    # A065036
    [3,1]   =>  [24,40,54,56,88,104,135,136,152,184,189,232,248,
                  250,296,297,328,344,351,375,376,424,459,472,488,
                  513,536,568,584,621,632,664,686,712,776,783,808,
                  824,837,856,872,875,904,999,1016,1029,1048,1096,
                  1107,1112],
    # A007304
    [1,1,1] =>  [30,42,66,70,78,102,105,110,114,130,138,154,165,
                 170,174,182,186,190,195,222,230,231,238,246,255,
                 258,266,273,282,285,286,290,310,318,322,345,354,
                 357,366,370,374,385,399,402,406,410,418,426,429,
                 430,434,435,438],
    # A050997
    [5]     =>  [32,243,3125,16807,161051,371293,1419857,2476099,
                 6436343,20511149,28629151,69343957,115856201,
                 147008443,229345007,418195493,714924299,844596301,
                 1350125107,1804229351,2073071593,3077056399,
                 3939040643],
    # A085986
    [2,2]   =>  [36,100,196,225,441,484,676,1089,1156,1225,1444,
                 1521,2116,2601,3025,3249,3364,3844,4225,4761,5476,
                 5929,6724,7225,7396,7569,8281,8649,8836,9025,
                 11236,12321,13225,13924,14161,14884,15129,16641,
                 17689,17956,19881]
  }

  SIGNATURES.each do |sig, members|
    members.each do |n|
      it "should return #{sig} for #{n}" do
        n.prime_signature.should == sig
      end
    end
  end
end
