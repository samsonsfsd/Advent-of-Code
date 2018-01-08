module Day3
  def self.test(string)
    # location = location on the spiral matrix
    # step = Manhattan Distance
    # sum and n are used to calculate the spiral row of location - one of the coordinate (we don't care which one)
    # r = remainder of location divided by row which determines the other coordinate on the sprial matrix
  	
    step = row = sum = n = y = 0

    #  matrix starts at 1 not zero so have to subtract 1
    location = (string.to_i) -1 
    if location == 0 then abort("location 1 is zero steps")
    end

    # puts location
    # Find outer most coordinate of the spiral (row) 
    # n = number of points in current spiral
    # sum = sumation of all points from 1 
    # do this until (sum + n) is > the location we are looking for. gives us the row and one of the coordinates of location
    while (sum + n) < location
      row = row + 1
      sum = sum + n
      n = n + 8
    end
      # puts "row:#{row}"
      # puts "sum:#{sum}"
      # puts "n:#{n}"
    # find second coordinate = remainder of (sum - location) / row
       # puts "sum:#{sum}"
   # find the location of the point within the row
   lsum = location - sum
   # find the quotient and remainder for the point (0-7 for q, 0-row-1 for m)
   q, m = lsum.divmod(row)
   y = m
   # puts "quotient:#{q}"
   # puts "location - sum:#{lsum}"
   # puts "modulus:#{m}"
   # is point at a corner?  If so then coordinates are equal
   # if location is in an even octant and if remainder is 0, then location is at a corner, then coordinates are both equal to row. 
   if q.even? and m == 0 
      y = row 
   end 
   # if location is in an even octant but not on a corner, second coordinate is difference between row and modulus.  
   # No need to check for odd octants since then modulus equals distance from an axis vs distance a corner; hence (row,modulus)
    if q.even? and m > 0 then y = row - y 
    end

  # all coordinate values are positive but adding abs just in case

   step = row.abs + y.abs
   
      # puts "taxicab distance is #{step}"
      return step
  end    
end      
    # end
  
  	# puts "Input: #{s}\nOutput: #{chksum}"   
  
describe "Day 3" do

  it "solves the captcha" do
    expect(Day3.test("12")).to eq 3
  end
  it "solves the captcha" do
    expect(Day3.test("23")).to eq 2   
  end
  it "solves the captcha" do  
    expect(Day3.test("1024")).to eq 31
    end
end 

step = Day3.test("312051")
 puts "taxicab distance is #{step}"
