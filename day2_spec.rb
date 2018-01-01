module Day2
  def self.test(string)
  	# first = string.chars.last.to_i
  	sum = 0
  	max = 0
    min = 0
    chksum = 0
  	arr= string.split(" ") 
    # .map{ |s| s.to_i}
     min = arr[0].to_i
        # puts arr
    # puts array.length
    for i in 0..arr.length-1 do 

    # puts "string length: #{string.length}"

     if min > arr[i].to_i
        min = arr[i].to_i
      end
        # puts "arr: #{arr[i]}"
        # puts "min: #{min}"

      # puts min  	 
      if max < arr[i].to_i
  	 	   max = arr[i].to_i
  	 	end
      # puts "max: #{max}"
      chksum = max - min
      # puts "chksum: #{chksum}"
    # end
  
  	# puts "Input: #{s}\nOutput: #{chksum}"   
  
    end
return chksum
end


#   tests
describe "Day 2" do

	it "solves the captcha" do
		expect(Day2.test("5 1 9    5")).to eq 8  
	end
	it "solves the captcha" do
		expect(Day2.test("7    5 3")).to eq 4   
	end
	it "solves the captcha" do	
		expect(Day2.test("2   4 6   8")).to eq 6
    end
end	
  ### calculate checksum  
totchk = 0
chksum = Day2.test("86  440 233 83  393 420 228 491 159 13  110 135 97  238 92  396")
totchk += chksum
chksum = Day2.test("646 3952  3430  145 1574  2722  3565  125 3303  843 152 1095  3805  134 3873  3024")
totchk += chksum
chksum = Day2.test("2150  257 237 2155  1115  150 502 255 1531  894 2309  1982  2418  206 307 2370")
totchk += chksum
chksum = Day2.test("1224  343 1039  126 1221  937 136 1185  1194  1312  1217  929 124 1394  1337  168")
totchk += chksum
chksum = Day2.test("1695  2288  224 2667  2483  3528  809 263 2364  514 3457  3180  2916  239 212 3017")
totchk += chksum
chksum = Day2.test("827 3521  127 92  2328  3315  1179  3240  695 3144  3139  533 132 82  108 854")
totchk += chksum
chksum = Day2.test("1522  2136  1252  1049  207 2821  2484  413 2166  1779  162 2154  158 2811  164 2632")
totchk += chksum
chksum = Day2.test("95  579 1586  1700  79  1745  1105  89  1896  798 1511  1308  1674  701 60  2066")
totchk += chksum
chksum = Day2.test("1210  325 98  56  1486  1668  64  1601  1934  1384  69  1725  992 619 84  167")
totchk += chksum
chksum = Day2.test("4620  2358  2195  4312  168 1606  4050  102 2502  138 135 4175  1477  2277  2226  1286")
totchk += chksum
chksum = Day2.test("5912  6261  3393  431 6285  3636  4836  180 6158  6270  209 3662  5545  204 6131  230")
totchk += chksum
chksum = Day2.test("170 2056  2123  2220  2275  139 461 810 1429  124 1470  2085  141 1533  1831  518")
totchk += chksum
chksum = Day2.test("193 281 2976  3009  626 152 1750  1185  3332  715 1861  186 1768  3396  201 3225")
totchk += chksum
chksum = Day2.test("492 1179  154 1497  819 2809  2200  2324  157 2688  1518  168 2767  2369  2583  173")
totchk += chksum
chksum = Day2.test("286 2076  243 939 399 451 231 2187  2295  453 1206  2468  2183  230 714 681")
totchk += chksum
chksum = Day2.test("3111  2857  2312  3230  149 3082  408 1148  2428  134 147 620 128 157 492 2879")
totchk += chksum
puts "Day 2 Check Sum is:#{totchk}"
end