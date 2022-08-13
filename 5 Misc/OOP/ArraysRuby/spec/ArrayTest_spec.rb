# user-centric... test from perspective of user inputs!
# each test takes a user input and checks if it matches expected output

# what if a user puts in...
    # 1
    # empty
    # 1 2 3
    # hello
    # etc.

# still need TO DO - deconstruct the sort function
# sorting function is great, but point of exercise is not just
# testing but building the code based on the test results

require 'ArrayTest_lib'

# describe "test that we can test" do
#     it "says true equals true" do
#         expect(true).to eql (true)
#     end
# end

# describe "test that we have an array" do
#     it "returns true if input class is array" do
#         tester = ArraySorter.new
#         result = tester.array_sort([1,2,3])
#         expect(result).to eql(true)
#     end
# end

# describe "test what happens if they put in a single number" do
#     it "returns 1 if they put in 1" do
#         tester = ArraySorter.new
#         result = tester.array_sort([1])
#         expect(result).to eql([1])
#     end
# end

# describe "test what happens if they put in 1 2 3" do
#     it "returns 1 2 3 if they put in 1 2 3" do
#         tester = ArraySorter.new
#         result = tester.array_sort([1,2,3])
#         expect(result).to eql([1,2,3])
#     end
# end

# describe "test what happens if they put in nothing (just hit enter)" do
#     it "returns '' if they put in ''" do
#         tester = ArraySorter.new
#         result = tester.array_sort([])
#         expect(result).to eql([])
#     end
# end

# describe "test what happens if they put in 'hello'" do
#     it "returns 1 if they put in 1" do
#         tester = ArraySorter.new
#         result = tester.array_sort("hello")
#         expect(result).to eql("ehllo")
#     end
# end

# describe "test that the array can sort" do
#     it "returns 1 2 3 if given 3 2 1" do
#         tester = ArraySorter.new
#         result = tester.array_sort([3,2,1])
#         expect(result).to eql([1,2,3])
#     end
# end

# describe "test that we can collect an array" do
#     it "returns 3 2 1 if given 3 2 1" do
#         tester = ArraySorter.new
#         result = tester.array_get
#         expect(result).to eql([3,2,1])
#     end
# end

# describe "test that we can sort a non-hardcoded array" do
#     it "returns 1 2 3 if they put in 3 2 1" do
#         tester = ArraySorter.new
#         input = tester.array_get
#         result = tester.array_sort(input)
#         expect(result).to eql([1,2,3])
#     end
# end