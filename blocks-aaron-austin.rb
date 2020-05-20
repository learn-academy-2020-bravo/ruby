# range =1..20
# range.each do |value|
#   p value
# end
#
#
#
#
#   range = 20..1
# (range.first).downto(range.last).each { |i| puts i }
#
# (1..20).each do |value|
#   p value
# end
#
#
#
# num = [2, 3, 4, 5, 6, 7, 8, 9, 10]
#
#   def showing_odds array
#     array.map do |value|
#
#          value * 5
#
#     end
#   end
# p showing_odds num
#
# words = ['this', 'is', 'not', 'just', 'another', 'beat', 'down', 'to' , 'the', 'cali', 'underground']
#
# def upper_case_array array
#   array.map {|array| array.upcase! }
#
# end
# p upper_case_array words
# p words



 #take an array and compare its values
 # to stored array
 #if value is greater ! overwrite its values
 #
#  num = [2,3,4,1005,6,7,8,9,10, 45, 60, 70, 100]
#  # p num.sort.firstNum = num.sort
#  firstNum = num.sort
# p firstNum[0]

# num = [78, 35, 42, 59, 65, 73, 48, 99, 101]
#
#  sorted =  num.sort
# p sorted
# odds_sorted = sorted.select {sorted % 2 == 0}
#
# p odds_sorted

# nums = [2,3,4,5,6,7, 2, 1]
#
# def is_even array
#     array.select! do | value|
#         value.odd? #checks if odd do even? to check if even duh
#     end
# end
#
# p is_even nums
# p nums.sort




# (1..100).each do |value|
#   if value % 3 == 0 && value % 5 == 0
#     p 'fizzbuzz'
#   elsif value % 5 == 0
#     p 'buzz'
#   elsif value % 3 == 0
#     p 'fizz'
#   else
#     p value
# end
# end



fruits = ['Apple', 'Avocado','Master', 'Banana', 'Mango']
def more_fruits array
   emptyA = []
   emptyB = []
   emptyM = []
  array.select! do | value |
    if value.include?"A"
     value
  
    elsif value.include?"M"
    value
  
    elsif value.include?"B"
    value
    
    end
  end
end

p more_fruits fruits